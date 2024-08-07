﻿using CSharpFunctionalExtensions;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using Product.Enrichment.machina.Worker.Backend.Domain.Services;
using System.Net.Http;
using System.Threading;
using System.Threading.Tasks;

namespace Product.Enrichment.machina.Worker.Backend.Infrastructure.ExternalServices
{
    public class machinaService : ImachinaService
    {
        private readonly ILogger _logger;
        private readonly IOptionsMonitor<machinaConfigurationOptions> _settings;
        private readonly HttpClient _httpClient;

        public machinaService(
            ILogger<machinaService> logger,
            IOptionsMonitor<machinaConfigurationOptions> settings,
            HttpClient httpClient
        )
        {
            _logger = logger;
            _settings = settings;
            _httpClient = httpClient;
        }

        public Task<Result> NotifyOffer(Domain.ValueObjects.OfferId offerId, CancellationToken cancellationToken) =>
            NotifyOffer(_settings.CurrentValue.DefaultStore, offerId, cancellationToken);

        private async Task<Result> NotifyOffer(string store, string offerId, CancellationToken cancellationToken)
        {
            var endpoint = $"/store/{store}/notification";

            var content = System.Net.Http.Json.JsonContent.Create(new
            {
                id = offerId
            });

            var response = await _httpClient.PostAsync(endpoint, content, cancellationToken);

            var responseString = $"Status: {response.StatusCode} | Content: {await response.Content.ReadAsStringAsync(cancellationToken)}";
            var metadata = JsonConvert.SerializeObject(new { Endpoint = endpoint, response.StatusCode, Store = store, OfferId = offerId });

            _logger.LogDebug("Metadata: {metadata} - {responseString}", metadata, responseString);

            if (!response.IsSuccessStatusCode)
                return Result.Failure(responseString);

            return Result.Success();
        }
    }
}

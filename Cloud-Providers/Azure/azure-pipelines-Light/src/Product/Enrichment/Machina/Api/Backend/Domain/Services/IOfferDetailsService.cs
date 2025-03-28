﻿using CSharpFunctionalExtensions;
using Product.Enrichment.machina.Api.Backend.Domain.Entities;
using System.Threading;
using System.Threading.Tasks;

namespace Product.Enrichment.machina.Api.Backend.Domain.Services
{
    public interface IOfferDetailsService
    {
        Task<Result<Offer>> Get(ValueObjects.OfferId offerId, CancellationToken cancellationToken);
    }
}

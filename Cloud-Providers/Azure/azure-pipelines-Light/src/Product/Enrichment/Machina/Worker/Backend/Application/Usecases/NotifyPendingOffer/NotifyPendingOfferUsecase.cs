using AutoMapper;
using CSharpFunctionalExtensions;
using Product.Enrichment.machina.Worker.Backend.Domain.Services;
using System.Threading;
using System.Threading.Tasks;
using SharedUsecases = Shared.Backend.Application.Usecases;

namespace Product.Enrichment.machina.Worker.Backend.Application.Usecases.NotifyPendingOffer
{
    public class NotifyPendingOfferUsecase : INotifyPendingOfferUsecase
    {
        private readonly IMapper _mapper;
        private readonly ImachinaService _machinaService;

        public NotifyPendingOfferUsecase(
            IMapper mapper,
            ImachinaService machinaService
        )
        {
            _mapper = mapper;
            _machinaService = machinaService;
        }

        public async Task<Result<Models.Outbound, SharedUsecases.Models.Error>> Execute(Models.Inbound inbound, CancellationToken cancellationToken)
        {
            var offerId = _mapper.Map<Domain.ValueObjects.OfferId>(inbound);
            var notifyOfferResult = await _machinaService.NotifyOffer(offerId, cancellationToken);
            if (notifyOfferResult.IsFailure)
                return _mapper.Map<SharedUsecases.Models.Error>(notifyOfferResult);

            return Models.Outbound.Create();
        }
    }
}

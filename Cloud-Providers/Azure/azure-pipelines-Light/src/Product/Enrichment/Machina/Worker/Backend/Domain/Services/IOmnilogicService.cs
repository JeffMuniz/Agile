using CSharpFunctionalExtensions;
using System.Threading;
using System.Threading.Tasks;

namespace Product.Enrichment.machina.Worker.Backend.Domain.Services
{
    public interface ImachinaService
    {
        Task<Result> NotifyOffer(ValueObjects.OfferId offerId, CancellationToken cancellationToken);
    }
}

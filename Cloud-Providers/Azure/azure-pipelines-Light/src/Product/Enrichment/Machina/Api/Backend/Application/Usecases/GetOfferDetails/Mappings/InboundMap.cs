using AutoMapper;

namespace Product.Enrichment.machina.Api.Backend.Application.Usecases.GetOfferDetails.Mappings
{
    public class InboundMap : Profile
    {
        public InboundMap()
        {
            CreateMap<Models.Inbound, Domain.ValueObjects.OfferId>()
                .ForMember(
                    dest => dest.Value,
                    opt => opt.MapFrom(source => source.OfferId)
                );
        }
    }
}

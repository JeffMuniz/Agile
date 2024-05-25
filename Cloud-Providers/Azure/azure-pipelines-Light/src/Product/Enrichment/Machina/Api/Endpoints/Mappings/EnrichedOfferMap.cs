using AutoMapper;
using Product.Enrichment.machina.Api.Endpoints.Models;
using Usecases = Product.Enrichment.machina.Api.Backend.Application.Usecases;

namespace Product.Enrichment.machina.Api.Endpoints.Mappings
{
    public class EnrichedOfferMap : Profile
    {
        public EnrichedOfferMap()
        {
            CreateMap<OfferIdModel, Usecases.MakeEnrich.Models.Inbound>()
                .ReverseMap();

            CreateMap<EnrichedOfferModel, Usecases.MakeEnrich.Models.Inbound>()
                .ForMember(
                    dest => dest.SkuId,
                    opt => opt.MapFrom(source => source.Sku)
                )
                .ReverseMap();
        }
    }
}

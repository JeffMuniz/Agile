﻿using Microsoft.AspNetCore.Mvc;

namespace Product.Enrichment.machina.Api.Endpoints.Models
{
    public class OfferIdModel
    {
        [FromRoute(Name = "id")]
        public string OfferId { get; set; }
    }
}

using MyProductList.Helpers;
using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace MyProductList.Controllers.Api
{
    public class TranslatorController : ApiController
    {
        [HttpGet]
        public IHttpActionResult TranslateMe(string word)
        {
            var langDirection = "az-en";
            var client = new RestClient
            {
                BaseUrl = new Uri(string.Format(AppCache.TranslateLang, AppCache.API, word, langDirection))
            };

            var request = new RestRequest()
            {
                Method = Method.GET
            };

            var response = client.Execute(request);
            var dictionary = JsonConvert.DeserializeObject<IDictionary>(response.Content);

            var statusCode = dictionary["code"].ToString();

            var random = new Random().Next();
            if (statusCode.Equals("200"))
            {
                var result = new TranslationResult { Text = dictionary["text"].ToString(), Number = random};

                return Ok(result);
            }
            return NotFound();
        }
    }
}

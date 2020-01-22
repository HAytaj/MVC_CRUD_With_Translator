using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyProductList.Helpers
{
    public class AppCache
    {
        public static string API { get; } = @"trnsl.1.1.20200121T150632Z.b183945d09dc1bb6.90b6f21cd65476deec8399ed65bbf4ce9ccf0f8b";
        public static string AvaliableLangs { get; } = @"https://translate.yandex.net/api/v1.5/tr.json/getLangs?key={0}&ui={1}";
        public static string DetectLang { get; } = @"https://translate.yandex.net/api/v1.5/tr.json/detect?key={0}&text={1}";
        public static string TranslateLang { get; } = @"https://translate.yandex.net/api/v1.5/tr.json/translate?key={0}&text={1}&lang={2}";
    }
}
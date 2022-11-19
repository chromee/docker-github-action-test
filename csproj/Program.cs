using Newtonsoft.Json;

if (args.Length < 3)
{
    Console.WriteLine("コマンドライン引数が足りません");
    return;
}

var jsonPath = args[0];
var packageName = args[1];
var hash = args[2];

if (string.IsNullOrEmpty(jsonPath))
{
    Console.WriteLine("jsonファイルが見つかりません");
    return;
}

var json = File.ReadAllText(jsonPath);
dynamic jsonObj = JsonConvert.DeserializeObject(json);

if (jsonObj == null)
{
    Console.WriteLine("jsonのパースに失敗");
    return;
}

jsonObj["dependencies"][packageName]["hash"] = hash;
string output = JsonConvert.SerializeObject(jsonObj, Formatting.Indented);
File.WriteAllText(jsonPath, output);

var fixedJson = File.ReadAllText(jsonPath);
Console.WriteLine(fixedJson);
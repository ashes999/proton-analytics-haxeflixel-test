class PaClient
{
    private static var client = new AnalyticsClient("PTIY6d4512lvA//5Sdh0EJmLRbOf2h2L124e9fqlNaE=");

    public static function startSession():Void
    {
        client.startSession();
    }

    public static function endSession():Void
    {
        client.endSession();
    }
}
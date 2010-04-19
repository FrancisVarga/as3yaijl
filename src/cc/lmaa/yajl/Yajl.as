package cc.lmaa.yajl {
  import cmodule.yajl.CLibInit;
  import flash.utils.ByteArray;

  public class Yajl {
    private static var _yajl : Object = new CLibInit().init();

    public static function decode(data : *) : * {
      return _yajl.decode(data);
    }

    public static function decodeAsync(callback : Function, str : String) : void {
      _yajl.decodeAsync(callback, str);
    }

    public static function setupStreamDecoder() : int {
      return _yajl.setupStreamDecoder();
    }

    public static function decodeStreamAsync(completeCallback : Function, decoderId : int, strPart : String) : void {
//      trace(strPart);
       _yajl.decodeStreamAsync(completeCallback, decoderId, strPart);
    }
  }
}

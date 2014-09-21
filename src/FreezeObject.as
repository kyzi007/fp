package {


    public class FreezeObject {
        private var _date : Object;

        public function FreezeObject (date : Object) {
            try {
                _date = clone(date)
            } catch (e : Error) {
                throw new Error('type not supported')
            }
        }

        public function getValue (key : *) : * {
            if (!_date.hasOwnProperty(key))  throw new Error('key ' + key.toString() + ' not found')

            const value : * = _date[key]

            if (_isEasy(value))  return value;
            else return clone(value)
        }

        private static function _isEasy (value : *) : Boolean {
            return value is Boolean || value is String || value is Number || value is int || value is uint
        }

        public function getDate():Object{
            return clone(_date)
        }
    }
}

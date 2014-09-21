package {


    public class FreezeModel {
        private var _a : int;
        private var _b : Object;

        public function FreezeModel (a : int, b : Object) {
            this._a = a;
            this._b = clone(b);

        }

        public function get a () : int {
            return _a;
        }

        public function get b () : Object {
            return clone(_b)
        }
    }
}

package {

    public class MagicMaker1 {

        private var _wandMaterial : String = undefined
        private var _wandColor : String = undefined

        public function make_magic () {
            createColor()
            createMaterial()

            if (_wandColor == 'red' || _wandColor == 'brown') {
                trace('magic')
            } else {
                trace('sorry')
            }
        }

        private function createMaterial () : String {
            _wandMaterial = 'glass'
        }

        private function createColor () : String {
            if (_wandMaterial == 'beech') {
                _wandColor = 'brown'
            } else if (_wandMaterial == 'glass') {
                _wandColor = 'red'
            } else {
                _wandColor = 'black'
            }
        }
    }
}

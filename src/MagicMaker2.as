package {

    public class MagicMaker2 {

        private var _wandMaterial : String = undefined
        private var _wandColor : String = undefined

        public function make_magic () {
            _wandMaterial = createMaterial()
            _wandColor = createColor(_wandMaterial)

            if (_wandColor == 'red' || _wandColor == 'brown') {
                trace('magic')
            } else {
                trace('sorry')
            }
        }

        private function createMaterial () : String {
            return 'glass'
        }


        private function createColor (material : String) : String {
            if (material == 'beech') {
                return 'brown'
            } else if (material == 'glass') {
                return 'red'
            } else {
                return 'black'
            }
        }
    }
}

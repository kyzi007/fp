package {
    import flash.display.Sprite;

    import react.BoolValue;
    import react.IntValue;
    import react.ObjectValue;
    import react.ObjectView;
    import react.StringValue;
    import react.ValueView;

    public class ExampleReact extends Sprite {

        public function ExampleReact () : void {
            example4()
        }

        private function example2 () : void {
            var anyCheckboxSelected : BoolValue = new BoolValue()

            var transformation : Function = function (value : Boolean) : String {
                return value ? 'green' : 'red'
            };

            var setColor : Function = function (new_color : String, old_color : String) : void {
                trace(old_color + '->' + new_color)
            };

            anyCheckboxSelected.map(function (value : Boolean) : String {
                    return value ? 'green' : 'red'
                }
            ).connect(
                function (new_color : String, old_color : String) : void {
                    trace(old_color + '->' + new_color)
                }
            )

            anyCheckboxSelected.value = true
        }

        private function example4 () : void {
            var anyCheckboxSelected : BoolValue = new BoolValue()

            var transformation : Function = function (value : Boolean) : String {
                return value ? 'green' : 'red'
            };

            var setColor : Function = function (new_color : String, old_color : String) : void {
                trace(old_color + '->' + new_color)
            };

            var color : ValueView = anyCheckboxSelected.map(function (value : Boolean) : String {
                    return value ? 'green' : 'red'
                }
            )

            anyCheckboxSelected.value = true
            trace(color.get())
        }

        private function example3 () : void {
            var intValue : IntValue = new IntValue(1)
            intValue.connect(function (value : int) : void {
                trace(value)
            }).once()
            intValue.value = 10
            intValue.value = 5
        }

        private function example1 () : void {
            var anyCheckboxSelected : BoolValue = new BoolValue(true)
            anyCheckboxSelected.connect(function (val : Boolean) : void {
                trace('checkbox updated, value =' + val)
            })
            anyCheckboxSelected.value = false
        }

    }
}

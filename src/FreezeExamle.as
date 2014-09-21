package {
    import flash.display.Sprite;

    public class FreezeExamle extends Sprite {

        public function FreezeExamle () {
            var obj : Object = {'a' : 1}
            var freezeObj : FreezeObject = new FreezeObject(obj)
            obj['a'] = 2
            trace(freezeObj.getValue('a'), 1)


            var model : FreezeModel = new FreezeModel(1, obj)
            obj['a'] = 4

            trace(model.a, model.b['a'])

        }
    }
}



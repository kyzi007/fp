package {
    import flash.display.MovieClip;

    import flexunit.framework.Assert;

    public class Tests {

        [Test]
        public function testFreezoObject () : void {
            var obj : Object = {'a' : 1}
            var freezeObj : FreezeObject = new FreezeObject(obj)
            obj['a'] = 2
            Assert.assertEquals(freezeObj.getValue('a'), 1)
        }

        [Test]
        public function testFreezoObjectTypeError () : void {
            try {
                new FreezeObject(new MovieClip())
                Assert.fail()
            } catch (e : Error) {

            }
            try {
                new FreezeObject(new AnyModel())
            } catch (e : Error) {
                Assert.fail()
            }
        }

        [Test]
        public function testFreezeModel () : void {
            var obj : Object = {'a' : 1}
            var model : FreezeModel = new FreezeModel(1, obj)
            obj['a'] = 4

            Assert.assertEquals(model.a, 1)
            Assert.assertEquals(model.b['a'], 1)
        }
    }
}

class AnyModel extends Object {
    internal var a : String = '123'
    internal var b : Object = {'a' : 123}
}

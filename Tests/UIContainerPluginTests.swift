import Quick
import Nimble
import Clappr

class UIContainerPluginTests: QuickSpec {

    override func spec() {
        it("Should have a name") {
            expect(NoNameContainerPlugin.name).to(raiseException(named: "MissingPluginName"))
            expect(StubContainerPlugin.name) == "StubContainerPlugin"
        }

        describe("Instantiation") {
            it("Should be initializaed with a Container") {
                let container = Container(playback: Playback())
                let plugin = StubContainerPlugin(context: container)

                expect(plugin.container) == container
            }

            it("Should not be initializaed with wrong context") {
                let context = UIBaseObject()
                expect(StubContainerPlugin(context: context)).to(raiseException(named: "WrongContextType"))

                let core = Core()
                expect(StubContainerPlugin(context: core)).to(raiseException(named: "WrongContextType"))
            }
        }
    }

    class StubContainerPlugin: UIContainerPlugin {
        override var pluginName: String {
            return "StubContainerPlugin"
        }
    }

    class NoNameContainerPlugin: UIContainerPlugin {
    }

}

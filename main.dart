import 'aaff.dart';
import 'string2int.dart';
import 'riscx.dart' as RISCX;

void main(List<String> argv) async {
  if (argv.isEmpty) return;
  RISCX.Machine.run(string2int((await AaffFile.read(argv.first)).decode()));
}

namespace WpfApp1
{
    internal class DataParser
    {
        public static List<Instruction> ParseData(string data)
        {
            var instructions = new List<Instruction>();
            var lines = data.Split(new[] { Environment.NewLine }, StringSplitOptions.RemoveEmptyEntries);
            var commandType  = string.Empty;
            var counter = 0;
            int index = 0;

            foreach (var line in lines)
            {
                var parts = line.Split(new[] { '\t', ',' }, StringSplitOptions.RemoveEmptyEntries);
                if (parts.Length >= 8)
                {
                    int offset = 0;
                    var instruction = new Instruction();

                    if (parts[0].Contains(':'))
                    {
                        offset = 1;
                        commandType = parts[0].Replace(":", "");
                        index = 0;
                    }

                    instruction.Address = counter++.ToString("X");
                    instruction.Stage = commandType;
                    instruction.Reg1 = parts[0 + offset].Trim();
                    instruction.Reg2 = parts[1 + offset].Trim();
                    instruction.Reg3 = parts[2 + offset].Trim();
                    instruction.Reg4 = parts[3 + offset].Trim();
                    instruction.Reg5 = parts[4 + offset].Trim();
                    instruction.Reg6 = parts[5 + offset].Trim();
                    instruction.Operation = parts[6 + offset].Trim();
                    instruction.NextStage = parts[7 + offset].Trim();
                    instructions.Add(instruction);
                }
            }

            return instructions;
        }
    }
}

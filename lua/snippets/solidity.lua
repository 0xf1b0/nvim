local ls = require('luasnip')

ls.add_snippets('solidity', {
  ls.parser.parse_snippet('spdx', '// SPDX-License-Identifier: MIT'),
  ls.parser.parse_snippet('pragma', 'pragma solidity ^0.8.0;'),
  ls.parser.parse_snippet('test', [[
    // SPDX-License-Identifier: MIT
    pragma solidity ^0.8.0;
    import {Test, console2} from "forge-std/Test.sol";

    contract $1 is Test {
        function test_$2() public {

        }
    }
  ]])
})

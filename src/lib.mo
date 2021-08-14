/*

        CCCCCCCCCCCCC    444444444  
     CCC::::::::::::C   4::::::::4  
   CC:::::::::::::::C  4:::::::::4  
  C:::::CCCCCCCC::::C 4::::44::::4  
 C:::::C       CCCCCC4::::4 4::::4  
C:::::C             4::::4  4::::4  
C:::::C            4::::4   4::::4  
C:::::C           4::::444444::::444
C:::::C           4::::::::::::::::4
C:::::C           4444444444:::::444
C:::::C                     4::::4  
 C:::::C       CCCCCC       4::::4  
  C:::::CCCCCCCC::::C       4::::4  
   CC:::::::::::::::C     44::::::44
     CCC::::::::::::C     4::::::::4
        CCCCCCCCCCCCC     4444444444

   ____                                         ____            _     _            
  / ___|___  _ __ ___  _ __ ___   ___  _ __    / ___|__ _ _ __ (_)___| |_ ___ _ __ 
 | |   / _ \| '_ ` _ \| '_ ` _ \ / _ \| '_ \  | |   / _` | '_ \| / __| __/ _ \ '__|
 | |__| (_) | | | | | | | | | | | (_) | | | | | |__| (_| | | | | \__ \ ||  __/ |   
  \____\___/|_| |_| |_|_| |_| |_|\___/|_| |_|  \____\__,_|_| |_|_|___/\__\___|_|   
   ____           _         ____      _ _                                          
  / ___|   _  ___| | ___   / ___|__ _| | |___                                      
 | |  | | | |/ __| |/ _ \ | |   / _` | | / __|                                     
 | |__| |_| | (__| |  __/ | |__| (_| | | \__ \                                     
  \____\__, |\___|_|\___|  \____\__,_|_|_|___/                                     
       |___/                                                                       

There are some things that I want all of my canisters to support WRT Cycles.
If there was some kind of community standard for topup tips, or that sort of thing,
I would definitely include them here.

*/

import Cycles "mo:base/ExperimentalCycles";
import Nat "mo:base/Nat";
import Option "mo:base/Option";

module {

    // Return cycles remaining in canister
    public func available () : async Nat {
        return Cycles.balance();
    };

    // Accept cycles and return the accepted amount
    public func accept () : async Nat {
        Cycles.accept(Cycles.available());
    };

    // Send cycles to a principal and return the accepted amount
    // Make sure you don't expose this publicly without restriction 😂
    public func send (amount : Nat) : async Nat {
        // This is possible, right?
        // TODO: this
        0
    };

};
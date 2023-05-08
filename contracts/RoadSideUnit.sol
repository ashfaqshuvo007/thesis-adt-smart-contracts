//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;


import "./AnalyzerVehicle.sol";
import "./Vehicle.sol";


contract RoadSideUnit {

    address public analyzerVehicleAddr;
    address public vehicleAddr;
    

    constructor() {

        Vehicle vehicle = new Vehicle();
        vehicleAddr = address(vehicle);

        AnalyzerVehicle analyzervehicle = new AnalyzerVehicle();
        analyzerVehicleAddr = address(analyzervehicle);
    }

    function getChildContractAddresses() public view returns (address, address) {

        return (vehicleAddr, analyzerVehicleAddr);
    }
   
}
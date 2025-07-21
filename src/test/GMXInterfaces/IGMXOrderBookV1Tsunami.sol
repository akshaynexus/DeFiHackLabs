// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import "./IGMXOrderbookV1.sol";

interface IGMXOrderBookV1Tsunami is IGMXOrderBookV1 {
    struct CreateIncreaseOrderParams {
        address[] path;
        uint256 amountIn;
        address indexToken;
        uint256 minOut;
        uint256 sizeDelta;
        address collateralToken;
        bool isLong;
        uint256 triggerPrice;
        bool triggerAboveThreshold;
        uint256 executionFee;
        bool shouldWrap;
    }

    function createIncreaseOrder(
        CreateIncreaseOrderParams calldata params,
        bytes[] calldata _pythUpdateData
    ) external payable;

}
export const VegetableConstants = {
  RECEIVE_VEGETABLES: "RECEIVE_VEGETABLES",
  RECEIVE_VEGETABLE: "RECEIVE_VEGETABLE",
  REQUEST_VEGETABLES: "REQUEST_VEGETABLES",
  REQUEST_VEGETABLE: "REQUEST_VEGETABLE",
  CREATE_VEGETABLE: "CREATE_VEGETABLE",
};

export const requestVegetables = () => ({
  type: VegetableConstants.REQUEST_VEGETABLES
});

export const requestVegetable = id => ({
  type: VegetableConstants.REQUEST_VEGETABLE,
  id
});

export const receiveVegetables = vegetables => ({
  type: VegetableConstants.RECEIVE_VEGETABLES,
  vegetables
});

export const receiveVegetable = vegetable => ({
  type: VegetableConstants.RECEIVE_VEGETABLE,
  vegetable
});

export const createVegetable = vegetable => ({
  type: VegetableConstants.CREATE_VEGETABLE,
  vegetable
});

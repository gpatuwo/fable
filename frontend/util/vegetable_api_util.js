export const fetchVegetables = (success) => {
  $.ajax({
    method: 'GET',
    url: 'api/vegetables',
    success
  });
};

export const fetchVegetable = (id, success) => {
  $.ajax({
    method: 'GET',
    url: `api/vegetables/${id}`,
    success
  });
};

export const createVegetable = (vegetable, success) => {
  $.ajax({
    method: 'POST',
    url: 'api/vegetables',
    data: vegetable,
    success
  });
};

export const deleteVegetable = (id, success) => {
  $.ajax({
    method: 'DELETE',
    url: `api/vegetables/${id}`,
    success,
    error: () => {
      console.log("deletion error in VegetableApiUtil#delete");
    }
  });
};

export const fetchVegetables = (success) => {
  $.ajax({
    method: 'GET',
    url: 'api/vegetables',
    success,
    error: () => {
      console.log("fetch error in VegetableApiUtil#fetch");}
  });
};

export const fetchVegetable = (id, success) => {
  $.ajax({
    method: 'GET',
    url: `api/vegetables/${id}`,
    success
  });
};

export const createVegetable = (vegetable, success, error) => {
  $.ajax({
    method: 'POST',
    url: 'api/vegetables',
    data: vegetable,
    success,
    error
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

export const updateVegetable = (id, vegetable, success) => {
  $.ajax({
    method: 'PATCH',
    url: `api/vegetables/${id}`,
    data: vegetable,
    success
  });
};

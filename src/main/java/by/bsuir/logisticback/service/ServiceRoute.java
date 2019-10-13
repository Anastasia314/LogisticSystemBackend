package by.bsuir.logisticback.service;

import by.bsuir.logisticback.model.Price;
import by.bsuir.logisticback.model.entity.Route;

import java.util.List;

public interface ServiceRoute<T> extends Service<T> {
    public List<T> getRouteByEndStart(Integer start, Integer end);

    public List<Price> listOfRoute(List<Route> route, double mass);
}

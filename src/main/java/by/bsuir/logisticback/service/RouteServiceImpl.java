package by.bsuir.logisticback.service;

import by.bsuir.logisticback.dao.Dao;
import by.bsuir.logisticback.dao.DaoRoute;
import by.bsuir.logisticback.model.Price;
import by.bsuir.logisticback.model.entity.Maps;
import by.bsuir.logisticback.model.entity.Route;
import by.bsuir.logisticback.model.entity.Transport;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

public class RouteServiceImpl implements ServiceRoute<Route> {
    private DaoRoute<Route> routeDao;
    private Dao<Maps> mapsDao;
    private Dao<Transport> transportDao;


    public void setRouteDao(DaoRoute routeDao) {
        this.routeDao = routeDao;
    }


    @Override
    @Transactional
    public void add(Route route) {
        this.routeDao.add(route);
    }


    @Override
    @Transactional
    public void update(Route route) {

    }

    @Override
    @Transactional
    public void remove(int id) {

    }

    @Override
    @Transactional
    public Route getById(int id) {
        return null;
    }

    @Override
    @Transactional
    public boolean getByLogin(String login) {
        return false;
    }

    @Override
    public Route getByLoginP(String login) {
        return this.routeDao.getByLoginP(login);
    }

    @Override
    @Transactional
    public List<Route> list() {
        return null;
    }

    @Override
    @Transactional
    public List<Route> find(String name) {
        return null;
    }

    @Override
    public List<Route> getRouteByEndStart(Integer start, Integer end) {
        return this.routeDao.getRouteByEndStart(start, end);
    }

    @Override
    public List<Price> listOfRoute(List<Route> route, double mass, int coefficient) {
        List<Price> prices = new ArrayList<Price>();
        System.out.println(route.size());
        List<Maps> mapsList;
        List<Transport> transportList;
        double price;
        mapsList = mapsDao.list();
        transportList = transportDao.list();
        System.out.println("list of maps " + mapsList.size());
        for (Route r : route) {
            price = 0.0;
            String desc = "";
            int id = r.getIdRoute();
            for (Maps m : mapsList) {
                if (m.getRoute() == id) {
                    for (Transport t : transportList) {
                        if (m.getIdTransportInMaps() == t.getIdTransport()) {
                            double k = Math.ceil(mass / t.getMaxWeight());
                            price = price + m.getDistance() / t.getSpeed() * coefficient * m.getCostForHour() * k;
                            System.out.println("price = " + price);
                            System.out.println("transport");
                            if (t.getTransportName().equals("Auto")) {
                                desc = desc + "Auto: " + (int) k + " ";
                            }
                            if (t.getTransportName().equals("Sea")) {
                                desc = desc + "Containers: " + (int) k + " ";
                            }
                            if (t.getTransportName().equals("Air")) {
                                desc = desc + "Aircrafts: " + (int) k + " ";
                            }
                            if (t.getTransportName().equals("Rail")) {
                                desc = desc + "Rail car: " + (int) k + " ";
                            }
                            System.out.println("desc" + desc);
                        }
                    }
                }
            }
            prices.add(new Price(r.getIdRoute(), (double) Math.round(price * 100) / 100, r.getNameOfRoute(), desc));
        }
        System.out.println("size price " + prices.size());
        return prices;
    }

    public void setMapsDao(Dao<Maps> mapsDao) {
        this.mapsDao = mapsDao;
    }

    public void setTransportDao(Dao<Transport> transportDao) {
        this.transportDao = transportDao;
    }
}

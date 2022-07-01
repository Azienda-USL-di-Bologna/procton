// _ICD_COMP_START

import com.progamma.IDVariant;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

//import com.progamma.IMDBObj;
//import com.progamma.is.WebEntryPoint;

public class BdsInvoker {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}
        
        /**
         * 
         * @param MainFrm cosa di Inde
         * @param IMDB cosa di Inde
         * @param className nome della classe da istanziare
         * @param MethodName nome del metodo da istanziare
         * @param params lista dei parametri. Ogni elemento della lista è una mappa così formata: 
         *      {"(String)type":"(String)tipo del parametro", "(String)value":(Object)valore del parametro}
         *      (es. {"type":"java.lang.String", "value":"valore"})
         * @return il risultato del metodo eseguito (è null se il metodo non torna niente o torna null)
         */
        public static Object invoke(MyWebEntryPoint MainFrm, com.progamma.IMDBObj IMDB, String className, String methodName, List params) throws ClassNotFoundException, InstantiationException, IllegalAccessException, NoSuchMethodException, IllegalArgumentException, InvocationTargetException {
            Class[] paramsType = null;
            ArrayList<Object> paramValues = null;
//            MainFrm = null;
//            IMDB = null;
//            System.out.println(Arrays.toString(params.toArray()));
            
            if (params != null) {
                paramsType = new Class[params.size()];
                paramValues = new ArrayList<Object>();
                int i = 0;
                for (Object paramObject: params) {
                    Map<String, Object> param = (Map<String, Object>) paramObject;
                    paramsType[i] = Class.forName((String)param.get("type"));
                    Object paramValue = param.get("value");
//                    System.out.println("paramType: " + paramsType[i]);
                    if (paramsType[i].isAssignableFrom(IDVariant.class)) {
//                        System.out.println("1");
//                        System.out.println(paramValue);
//                        System.out.println(paramValue.getClass());
//                        System.out.println(paramsValue[i] instanceof String.class));
                        if (paramValue instanceof String) {
//                            System.out.println("2");
                            paramValues.add(new IDVariant((String)paramValue));
                        }
                    }
                    else {
//                        System.out.println("3");
                        paramValues.add(paramValue);
                    }
                    i++;
                }
            }
//            System.out.println("----------");
//            System.out.println(Class.forName(className));
            Class<?> classObject = Class.forName(className);
//            System.out.println(classObject);
//            System.out.println(Arrays.toString(classObject.getDeclaredMethods()));

            Object classInstance = null;
            Method selectedMethod = null;
            
            Method[] methods = classObject.getDeclaredMethods();
            for (Method method : methods) {
                if (method.getName().equals(methodName))
                    selectedMethod = method;
            }
            
//            try {
//                method = classObject.getDeclaredMethod(methodName, paramsType);
//            }
//            catch (NoSuchMethodException ex) {
//                if (paramsType == null) {
//                    paramsType = new Class[2];
//                    paramsValue = new Object[2];
//                }
//                int i = paramsType.length;
//                paramsType[i] = FunzioniPubbliche.MyWebEntryPoint.class;
//                paramsValue[i] = MainFrm;
//                i++;
//                paramsType[i] = com.progamma.IMDBObj.class;
//                paramsValue[i] = IMDB;
//                method = classObject.getDeclaredMethod(methodName, paramsType);
//            }
            
            if (!Modifier.isStatic(selectedMethod.getModifiers())) {
//                System.out.println(Arrays.toString(classObject.getDeclaredConstructors()));
                Constructor<?> selectedConstructor = null;
                Constructor<?>[] constructors = classObject.getDeclaredConstructors();
                for (Constructor<?> constructor : constructors) {
                    if (constructor.getParameterTypes().length > 0)
                        selectedConstructor = constructor;
                }
                classInstance = selectedConstructor.newInstance(MainFrm, IMDB);
                
            }
            else {
//                if (paramsType == null) {
//                    paramsType = new Class[2];
//                    paramsValue = new Object[2];
//                }
//                int i = paramsType.length;
//                paramsType[i] = MyWebEntryPoint.class;
//                paramsValue[i] = MainFrm;
//                i++;
//                paramsType[i] = com.progamma.IMDBObj.class;
//                paramsValue[i] = IMDB;
//                Object[] completeParamValues = new Object[]
                paramValues.add(MainFrm);
                paramValues.add(IMDB);
            }
//            System.out.println(Arrays.toString(paramValues.toArray()));
            Object methodResult = selectedMethod.invoke(classInstance, paramValues.toArray());
            return methodResult;
        }
	
}

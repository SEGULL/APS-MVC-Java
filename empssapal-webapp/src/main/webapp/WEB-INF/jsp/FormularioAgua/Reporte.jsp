<%@ include file="/WEB-INF/jsp/include/taglibs.jsp"%>
<script src="../../bootstrap/js/jspdf.debug.js"></script>

<label>EMPSSAPAL  "AÑO DE LA CONSOLIDACION PERU"</label>
<label>===========================================================================================================================================</label>

<label>REPORTE DE PRE SUPUESTO</label>
<br>	
	<table border="8">
		<label>TITULAR : </label>
		<tr>${FormularioAgua.interesado}</tr>
		<br>
		<label>FECHA : </label>
		<tr>${FormularioAgua.fecha}</tr>
		<br>
		<label>FECHA : </label>
		<tr>${FormularioAgua.distancia}</tr>
	
	</table >
	
<br>
<center>	
	<table border="4">
		<tr>
			<td>CONCEPTO DE:</td>
			<td>UNIDAD DE MEDIDA</td>
			<td>PRECIO UNITARIO</td>
			<td>PRECIO TOTAL</td>
		</tr>
		<tr >
			<td>Costo por Pista (incluye rotura y reposicion de pista)</td>
			<td>M2</td>
			<td>
					<c:forEach items="${pistas}" var="i">
					      <p>${i.costopista}</p>	
				    </c:forEach>
		    </td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por Excavacion</td>
			<td>M2</td>
			<td>
				 <c:forEach items="${excavacion}" var="i">
					      <p>${i.precioexcavacion}</p>	
				 </c:forEach>
			</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por Cama de apoyo</td>
			<td>M2</td>
			<td>
				 <c:forEach items="${camaapoyo}" var="i">
					      <p>${i.preciocama}</p>	
				 </c:forEach>
			</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por diametros tendido tuberia</td>
			<td>Unitario</td>
			<td>
				 <c:forEach items="${tendido}" var="i">
					      <p>${i.costotendido}</p>	
				 </c:forEach>
			</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por caja medidor</td>
			<td>diametro</td>
			<td>precio unitario</td>
			<td>precio unitario</td>
		</tr>
		<tr>
			<td>Costo por empalme a red</td>
			<td>diametro && tipo de red</td>
			<td>precio unitario</td>
			<td>precio unitario</td>
		</tr>
		<tr>
			<td>Costo por relleno y compactacion</td>
			<td>Agua</td>
			<td>precio unitario</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por eliminacion de material excedente</td>
			<td>Agua</td>
			<td>precio unitario</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td>Costo por Prueba hidrahulica</td>
			<td>Agua</td>
			<td>precio unitario</td>
			<td>precio unitario por cantidad</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td>Costo Total</td>
			<td>23121</td>
		</tr>
	</table>

</div>
</center>
<br>
<br>
<br>
<center><button type="button" class="btn btn-primary" onclick="window.print()">Descargar</button></center>

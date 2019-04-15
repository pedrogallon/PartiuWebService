package br.com.usjt.web.interceptor;

import javax.servlet.http.HttpSession;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.usjt.web.annotation.Restrito;
import br.com.usjt.web.controller.UsuarioController;
import br.com.usjt.web.model.Usuario;

@Intercepts
public class AutenticacaoInterceptor implements Interceptor {

	private final HttpSession session;
	private final Result result;
	
	public AutenticacaoInterceptor(HttpSession session, Result result) {
		this.session = session;
		this.result = result;
	}
	
	@Override
	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object resourceInstance) throws InterceptionException {
		result.redirectTo(UsuarioController.class).index();
	}

	@Override
	public boolean accepts(ResourceMethod method) {
		Usuario usuarioLogado = (Usuario) session.getAttribute("usuarioLogado");
		if (usuarioLogado == null && method.containsAnnotation(Restrito.class)) {
			return true;
		} else {
			return false;
		}
	}

}

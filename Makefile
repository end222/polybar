# $FreeBSD$

PORTNAME=	polybar
PORTVERSION=	3.0.5
CATEGORIES=	multimedia

MAINTAINER=	xxx@xxx.com
COMMENT=	Fast and easy-to-use status bar

BUILD_DEPENDS=	bash:shells/bash
LIB_DEPENDS=	libinotify.so:devel/libinotify

USES=		cmake:outsource,noninja

USE_GITHUB=	yes
GH_TUPLE=	jaagr:${PORTNAME}:${PORTVERSION} \
		jaagr:xpp:1.4.0:xpp/lib/xpp \
		jaagr:i3ipcpp:v0.7.0:i3ipcpp/lib/i3ipcpp

OPTIONS_DEFINE=		ALSA CURL I3 IPC MPD
OPTIONS_DEFAULT=	ALSA CURL I3 IPC MPD

ALSA_CMAKE_ON=		-DENABLE_ALSA:BOOL=ON
ALSA_CMAKE_OFF=		-DENABLE_ALSA:BOOL=OFF
ALSA_LIB_DEPENDS=	libasound.so:audio/alsa-lib

I3_CMAKE_ON=		-DENABLE_I3:BOOL=ON
I3_CMAKE_OFF=		-DENABLE_I3:BOOL=OFF
I3_BUILD_DEPENDS=	i3:x11-wm/i3
I3_LIB_DEPENDS=		libjsoncpp.so:devel/jsoncpp

MPD_CMAKE_ON=		-DENABLE_MPD:BOOL=ON
MPD_CMAKE_OFF=		-DENABLE_MPD:BOOL=OFF
MPD_LIB_DEPENDS=	libmpdclient.so:audio/libmpdclient

CURL_CMAKE_ON=		-DENABLE_CURL:BOOL=ON
CURL_CMAKE_OFF=		-DENABLE_CURL:BOOL=OFF
CURL_LIB_DEPENDS=	libcurl.so:ftp/curl

IPC_CMAKE_ON=		-DENABLE_IPC:BOOL=ON
IPC_CMAKE_OFF=		-DENABLE_IPC:BOOL=OFF

# XXX
CXXFLAGS+=	-I${LOCALBASE}/include -I${LOCALBASE}/include/jsoncpp -L${LOCALBASE}/lib -linotify

.include <bsd.port.mk>

# Created by: mikael.urankar@gmail.com
# $FreeBSD$

# XXX WITH_XRENDER...
# querylib(WITH_XCOMPOSITE "pkg-config" xcb-composite libs dirs)
# querylib(WITH_XDAMAGE "pkg-config" xcb-damage libs dirs)
# querylib(WITH_XKB "pkg-config" xcb-xkb libs dirs)
# querylib(WITH_XRANDR "pkg-config" xcb-randr libs dirs)
# querylib(WITH_XRANDR_MONITORS "pkg-config" "xcb-randr>=1.12" libs dirs)
# querylib(WITH_XRENDER "pkg-config" xcb-render libs dirs)
# querylib(WITH_XRM "pkg-config" xcb-xrm libs dirs)
# querylib(WITH_XSYNC "pkg-config" xcb-sync libs dirs)

PORTNAME=	polybar
DISTVERSION=	3.0.5
CATEGORIES=	x11

MAINTAINER=	mikael.urankar@gmail.com
COMMENT=	Fast and easy-to-use status bar

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	bash:shells/bash \
		xcb-proto>=1.9:x11/xcb-proto
LIB_DEPENDS=	libinotify.so:devel/libinotify \
		libfontconfig.so:x11-fonts/fontconfig \
		libfreetype.so:print/freetype2 \
		libxcb-ewmh.so:x11/xcb-util-wm \
		libxcb-image.so:x11/xcb-util-image \
		libxcb-util.so:x11/xcb-util \
		libxcb-xrm.so:x11/xcb-util-xrm

USES=		cmake:outsource,noninja localbase:ldflags pkgconfig:build python:2
USE_GNOME+=	cairo
USE_XORG+=	xcb

USE_GITHUB=	yes
GH_TUPLE=	jaagr:${PORTNAME}:${PORTVERSION} \
		jaagr:xpp:1.4.0:xpp/lib/xpp \
		jaagr:i3ipcpp:v0.7.0:i3ipcpp/lib/i3ipcpp

OPTIONS_DEFINE=		ALSA CURL I3 IPC MPD
OPTIONS_DEFAULT=	ALSA CURL I3 IPC MPD

ALSA_CMAKE_BOOL=	ENABLE_ALSA
ALSA_LIB_DEPENDS=	libasound.so:audio/alsa-lib

CURL_CMAKE_BOOL=	ENABLE_CURL
CURL_LIB_DEPENDS=	libcurl.so:ftp/curl

I3_CMAKE_BOOL=		ENABLE_I3
I3_BUILD_DEPENDS=	${LOCALBASE}/include/i3/ipc.h:x11-wm/i3
I3_LIB_DEPENDS=		libjsoncpp.so:devel/jsoncpp

MPD_CMAKE_BOOL=		ENABLE_MPD
MPD_LIB_DEPENDS=	libmpdclient.so:audio/libmpdclient

IPC_CMAKE_BOOL=		ENABLE_IPC

post-patch:
	@${REINPLACE_CMD} 's|share||' ${WRKSRC}/man/CMakeLists.txt

.include <bsd.port.mk>

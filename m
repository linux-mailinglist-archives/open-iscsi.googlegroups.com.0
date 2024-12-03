Return-Path: <open-iscsi+bncBCUJ7YGL3QFBB3XYXO5AMGQEMKT3IDQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id C43769E1C5F
	for <lists+open-iscsi@lfdr.de>; Tue,  3 Dec 2024 13:41:24 +0100 (CET)
Received: by mail-pj1-x1037.google.com with SMTP id 98e67ed59e1d1-2ee3206466asf4168117a91.1
        for <lists+open-iscsi@lfdr.de>; Tue, 03 Dec 2024 04:41:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733229683; cv=pass;
        d=google.com; s=arc-20240605;
        b=V5BFDmW9rUZG7vFt7Ikk92hhCTPGw9TpqI2PQ+o0ve8b9vVYpr90i+cQ2+xKMlwwQF
         kHdcpVzAVshdlc4E/sLupUgwcPUTmrCwI6laTtsKq8J3RTb2D+XF9ZtvnfpoWQqQ18lm
         LyYosbtjH/mj7pKaLveqHxrTnz0PCRSHXYN8ZxArQPmX0veCfxv0RvC2VFBy4uNrPqPW
         vwjNAQ66NsSbaEHYJSwTd2azw/hMFRmbno3Qu6iOSBvnqQOzvx3Xb6ynYg63uuPHGSIq
         53Ebna12xmRek+KHd/1rw30BcgvKRZHBYgqFUhz6jMG2xfDeiSAktKBiIspuBsxSsYd4
         rF6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=9n5I5tghhdiqO1JwpTnQzrqPBUGEYpiOBplUjKTaUbM=;
        fh=jqafaYfKhMwb8aKeCu5fHDseE6Kwrq9rC2L3XE9+urw=;
        b=Gmc1y+/s6faLQFd0T+5XB1Cd3t6rfLZ8NygaGda0NfrcALuEqqKZvTsAizoh1HfMWj
         /yhEqwSRdjU93W8wOChaW47oOZEyuzP9ARoyQPDElxbbRrc1v1HoLGvF/DFMdUqEFlqz
         Kk0RJgLRDzH4irDJArGX3np7KPDHc7QC19oz5zAniYuXbjuYQAj6ieK1VNBp6uAFwUyu
         78tyahqMUCZpqi+VJp2POQwMfO9LPv0hbM5DOq2NhbVORC9DW5WgKxNOMioFV4F7qeAm
         RvDmrocQMG+KH3GFj4i2KC/5+mkVFzkqhrWAO0toHifK3B/pD7JobkIRGIcuWE4zDF23
         UBYw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1Unb6vnj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733229683; x=1733834483; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=9n5I5tghhdiqO1JwpTnQzrqPBUGEYpiOBplUjKTaUbM=;
        b=YUjViKhkaE9woZRx1lpKWsbQiGXqbVYVvtJPCApmq1ak6Wb0LK95FAwd87UxfNBEEs
         RjYR0o6banomdFRBEaLcKOR7z7VlxDLr9vWxyEF0b8BeW/u/dIBPMoA34W1S54//zBTl
         5/BRgxdq1osSFxE3tvKFc3qYB+/pnzHhh6OCLtBvWvRVuOjmfaSKDG59xzq1HT0aIlrG
         L1NI/zpZ3JHZKaQxM9RG1/8/DgsTvLKyvxCWC0x5GoHOld+mj7NW5zDz+nT7LFqifJC1
         wEp79qkZCv89BME+Oq8CFQRUeQLP+WGnxNsB+McDM/e3H1qa627kZ2haOHUVBUWXCn5R
         y7bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733229683; x=1733834483;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9n5I5tghhdiqO1JwpTnQzrqPBUGEYpiOBplUjKTaUbM=;
        b=EbuJxX6vvIMth+UreEBOFsMnmoKZhakaMDFzAEnY9hBne5RinNixMCoh2NLJZWMv01
         pNp1Zl7I7QDw+LhS+PG4qNqymHc1SqvbQO/tcHtVexbFJq8yMDvfjZ2YNV6tcEnfrbnS
         sELmrYux9h7wh4YKnDgaM2T4F14SIVOw3b5PEcYUfi6hvPrSXwIv6G3N4S1bcX86LVqw
         wrFcNts4llCi47Z4/cfZFdG8sPMlVz1TQck6RY0DsUSjjGdsRPccEtTEQfn9y6sSUPxh
         i7b1Le34/H6D78tDGv0/Gd3QxtezbapJoG7MjY+at2e8+x9p+e4X8/MJ6IQMg0jLRYA0
         4cuQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUDu2Y3Joq06OYz2eBIjQUrsBV80c0w83L04E7UVPEzLFVDiTYHbNctwMTqVSLADpazkFXO3Q==@lfdr.de
X-Gm-Message-State: AOJu0YxB7hrIro0Wa/bhDubhh+ZYAVyQCId5y40oMt4d4hPnEZreLb+V
	PyRZItpl3dDIJ3LtnZBs5bDluSjXYMBCK117KPZp9fPkVOtWxgsm
X-Google-Smtp-Source: AGHT+IGLPg778bkoXJ1NP/TS44JNf4N8ZVspUc1VkD4t9Xgz4FtJjBb8Emq4UFdppWZmL49kcc05DA==
X-Received: by 2002:a17:90b:5109:b0:2ea:8aac:6ac1 with SMTP id 98e67ed59e1d1-2ef0262ba43mr3383152a91.15.1733229682901;
        Tue, 03 Dec 2024 04:41:22 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90b:4a0d:b0:2ee:753f:e8c3 with SMTP id
 98e67ed59e1d1-2ee753fe9bals1712514a91.0.-pod-prod-00-us; Tue, 03 Dec 2024
 04:41:16 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCX5daX7f6jh3Iua6PNL1q9cS9O8eCENJEk5v0M3PQTqaA+wOzdHDZLBqpZ1u8Akr3tofInrwYVqSKyP@googlegroups.com
X-Received: by 2002:a17:90b:3502:b0:2ee:7504:bb3d with SMTP id 98e67ed59e1d1-2ef01565452mr3905531a91.0.1733229676410;
        Tue, 03 Dec 2024 04:41:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733229676; cv=none;
        d=google.com; s=arc-20240605;
        b=jZyjyHTrhe4/+n+z9f+xAsZhjN+hyCgmtH7/8wTomNdmXe1Fl9wXysugZQyOC78sPO
         sG4OFVJz4RqXcXixGODRuu2nzNydfAJdGPaQQ532jI49MiClFdKrGCqrwtSQ1dL61ql0
         4KhYL2C4EG94pbjo15e3n5Ddd7j/J7x5ZVouBy51vednTk+hp6WG9s9b3m+Ok7Y13vB0
         ASxMbhuUUdtmGKDG/yMaB7TqMLU265FXtkU1GTnnnniego14OKUF33/i0pLw6LWrtRU6
         dS5QcWmvyVQ/ZLH67DtcYO0+Nj239rjv/uI/msh3m9Voatk5cfq9AKkpYFCo+2Fp2FQU
         9/oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=7lvdz4NYpSvXhqvvUM5Arn/eRox7yqZnVcuZIabisLE=;
        fh=6c+4aaAZrVAIq/BJSoBwzOUpXO3Ibts2aOtjGSz154U=;
        b=Z5weQapSJv5cx2MQ8trFT4sMqXJW3DWikQqLjPp/D0YLwVyZ46D9iHBncKqTTpSbuW
         648K7ir2tTwwitpvDSbGWOXDq7qBlVpHXklb0tpg0ZH1ApxZux+iB/6tZ3bVlXHAxkIi
         +2Fe29fb942/VIavcwHTmFjx87SMNhMUUcWgzvfClt+/lT8+U5+tLuZYkC2ZFGm+9yIs
         2GIFbykgRdY3rlUyhbVYUKiKQr1SR58vC2JJ9GGnBbOWHohffnbUPzpgQblQqrsEqcfA
         c0jbc5YFclSsMy29TDtHy6fOva36HNI6nt3JNQgezBsxcnpB5qBDMP+BJT3hMJwGmdt6
         b5zA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=1Unb6vnj;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org. [147.75.193.91])
        by gmr-mx.google.com with ESMTPS id 98e67ed59e1d1-2ee2a85c98bsi456323a91.0.2024.12.03.04.41.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 04:41:16 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as permitted sender) client-ip=147.75.193.91;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 0D707A41571;
	Tue,  3 Dec 2024 12:39:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95C16C4CECF;
	Tue,  3 Dec 2024 12:41:13 +0000 (UTC)
Date: Tue, 3 Dec 2024 13:41:10 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Zijun Hu <zijun_hu@icloud.com>
Cc: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Chun-Kuang Hu <chunkuang.hu@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Jean Delvare <jdelvare@suse.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Martin Tuma <martin.tuma@digiteqautomotive.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Andreas Noever <andreas.noever@gmail.com>,
	Michael Jamet <michael.jamet@intel.com>,
	Mika Westerberg <mika.westerberg@linux.intel.com>,
	Yehezkel Bernat <YehezkelShB@gmail.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>, Andrew Lunn <andrew@lunn.ch>,
	Vladimir Oltean <olteanv@gmail.com>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Simon Horman <horms@kernel.org>,
	Dan Williams <dan.j.williams@intel.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dave Jiang <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>,
	Takashi Sakamoto <o-takashi@sakamocchi.jp>,
	Jiri Slaby <jirislaby@kernel.org>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
	Mike Christie <michael.christie@oracle.com>,
	"James E.J. Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K. Petersen" <martin.petersen@oracle.com>,
	Nilesh Javali <njavali@marvell.com>,
	Manish Rangankar <mrangankar@marvell.com>,
	GR-QLogic-Storage-Upstream@marvell.com,
	Davidlohr Bueso <dave@stgolabs.net>,
	Jonathan Cameron <jonathan.cameron@huawei.com>,
	Alison Schofield <alison.schofield@intel.com>,
	Andreas Larsson <andreas@gaisler.com>,
	Stuart Yoder <stuyoder@gmail.com>,
	Laurentiu Tudor <laurentiu.tudor@nxp.com>,
	Jens Axboe <axboe@kernel.dk>, Sudeep Holla <sudeep.holla@arm.com>,
	Cristian Marussi <cristian.marussi@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Mathieu Poirier <mathieu.poirier@linaro.org>,
	linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org,
	linux-media@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
	linux-pwm@vger.kernel.org, nvdimm@lists.linux.dev,
	linux1394-devel@lists.sourceforge.net, linux-serial@vger.kernel.org,
	linux-sound@vger.kernel.org, open-iscsi@googlegroups.com,
	linux-scsi@vger.kernel.org, linux-cxl@vger.kernel.org,
	sparclinux@vger.kernel.org, linux-block@vger.kernel.org,
	arm-scmi@vger.kernel.org, linux-efi@vger.kernel.org,
	linux-remoteproc@vger.kernel.org,
	Zijun Hu <quic_zijuhu@quicinc.com>
Subject: Re: [PATCH v2 00/32] driver core: Constify API device_find_child()
 and adapt for various existing usages
Message-ID: <2024120320-manual-jockey-dfd1@gregkh>
References: <20241203-const_dfc_done-v2-0-7436a98c497f@quicinc.com>
 <g32cigmktmj4egkq2tof27el2yss4liccfxgebkgqvkil32mlb@e3ta4ezv7y4m>
 <9d34bd6f-b120-428a-837b-5a5813e14618@icloud.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <9d34bd6f-b120-428a-837b-5a5813e14618@icloud.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=1Unb6vnj;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 147.75.193.91 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

On Tue, Dec 03, 2024 at 08:23:45PM +0800, Zijun Hu wrote:
> On 2024/12/3 20:00, Uwe Kleine-K=C3=B6nig wrote:
> > Hello,
> >=20
> > On Tue, Dec 03, 2024 at 08:33:22AM +0800, Zijun Hu wrote:
> >> This patch series is to constify the following API:
> >> struct device *device_find_child(struct device *dev, void *data,
> >> 		int (*match)(struct device *dev, void *data));
> >> To :
> >> struct device *device_find_child(struct device *dev, const void *data,
> >> 				 device_match_t match);
> >> typedef int (*device_match_t)(struct device *dev, const void *data);
> >=20
> > This series isn't bisectible. With only the first two patches applied I
> > hit:
>=20
> yes. such patch series needs to be merge as atomic way.
>=20
> Hi Greg,
>=20
> is it possible to ONLY merge such patch series by atomic way into your
> driver-core tree?

Nope!

> or squash such patch series into a single patch ?
>=20
> various subsystem maintainers may not like squashing way.

Agreed, so look into either doing it in a bisectable way if at all
possible.  As I don't see a full series here, I can't suggest how it
needs to happen :(

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
2024120320-manual-jockey-dfd1%40gregkh.

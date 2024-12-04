Return-Path: <open-iscsi+bncBDXO746SYYBRBBENYK5AMGQE7GJR3CI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x1138.google.com (mail-yw1-x1138.google.com [IPv6:2607:f8b0:4864:20::1138])
	by mail.lfdr.de (Postfix) with ESMTPS id 901739E3FEA
	for <lists+open-iscsi@lfdr.de>; Wed,  4 Dec 2024 17:42:48 +0100 (CET)
Received: by mail-yw1-x1138.google.com with SMTP id 00721157ae682-6efa5bf51d1sf43076437b3.3
        for <lists+open-iscsi@lfdr.de>; Wed, 04 Dec 2024 08:42:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733330567; cv=pass;
        d=google.com; s=arc-20240605;
        b=XCNCuAMkFIgKUHSdY2YCPnYbiSoBZmOJvGuFsF6omUA8aPEyCD/M6qbDLL+Z91z/6R
         d9hU3Lu0SEPZNPap/XRsR5M1e3T4NhYZNXZNWkc7DZt+ZSRFNueHyLINdDLuGo3+X8Ou
         8NvWeuL6xx5I9AjMfkUjHGNqrqrbgqnEwT40YP9ZKoft0pNayQ7/9ZMFXjuDqmwuHYXN
         qTeHzAgf1wuNJhS/30vTQ9wmbA1wtQsd1xJywxuOkyqHvft7JSWAFhify21lXRy1pD73
         BLxFlq9AI/I92f1qutPh5oO/tjE1dU/PSpVmp8FXqcGesNrdQqdapfocql2NfeXFepMS
         CXyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=TRpm7pwk9M7BJJqyg/VvUvgce3m9bX+Ec1l+CZM/CSQ=;
        fh=vtKRRxKwfbgmf9RrJ9m/LdWDfzzuWNiDKfUQlCOAdZg=;
        b=iSsWilBlX8vty1C6C5ZDuCJrWEXyFAC3kfMRctUPAq8lZuQ0WhRTQyQpj7EBZeuvtZ
         dLF0ABpeyKvL7+USOpa4onwxeeOZ4FZauCqFUgm30MDRQjs16chOh+mYo1MP8ZWFFhHz
         CAxKMe8hguuchFNpGuKXqo7pfQz8dtl7jEAnpN7/t38GFLZyZf3hB3nGNFoVQNxlU2tG
         79Y4KHMTAh9axw9SaWRz8wO1MN83r/jgHMatqAtyPQcoQozE9MVClbxFSNkHlfMRRMFX
         8oCGQUXK5i2KdhFxPB0FWzrPkD/d/v5ER1WMS5h+se/HxkXupKzK1CMP0dYwS1OcpWOb
         hk9g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=jwLrm3XJ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=jwLrm3XJ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733330567; x=1733935367; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TRpm7pwk9M7BJJqyg/VvUvgce3m9bX+Ec1l+CZM/CSQ=;
        b=Ncowr5/jFh1cUKe7mckp7Kb3fbunffNVxyNMiLVcWaaeS//gBYnC23uBP0YwEol1Rb
         j0sg6HpGEDG6K2GAHKG2ax4rwFMUwo+Z7OyVg8lVA6QejmVkIGAmAu8Q4MIXcbQblnxb
         cO1oC2M/SqRGGsNNHTPE/BMUzlpMYgjUtZq/Peain6U4mkQPRjizCmBwchxErUHj73Hz
         BsneR33dFqINZnow4AXsbhbaRziKPfCsAtvK3t8Mu1b5T2qzR/+NTAIvXXhRKxONJEHC
         IjMp9+Ffpfjco0sY27aNu0i5/S5UF7wckCLNCPoNKjCXOmxRFwms4Ka3qJ40s7l7DNJ9
         6RhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733330567; x=1733935367;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TRpm7pwk9M7BJJqyg/VvUvgce3m9bX+Ec1l+CZM/CSQ=;
        b=Ya4d+HcHnMunpLw29xH9TEqAU0GulryFBhAXGdbUnuNZc7VqBbDOjVAyoI7ceGdQVv
         WijltRRYfze/8ScsE8v9kn+N+UGlzXldoKqUO/rOgisI4MC/LRL13ZiaF5HcRjDI0YNb
         gVsJqPwef0X3WhqbFpMr0UaCustpXau3P0HLHGZcpDcTbrfJ5xccvmDz1UJ1pSIouoDc
         kP1LKoZu7vX865QKYOqUyVKtJxLH/dsvRpu+K/VOFxCGi8e3aeuCJuGO8TX1rJop+Id+
         Xgc3CIyX4Gsch3vmwbPNydWYkQrfxljDRKtKGWfQxYx0d+hBZRjjKFpibE8g2p6BtbIJ
         vtBw==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXkopgRH5NXSBTqhF3S13PmOXSLhe1gIy+wnAl8NJjkLFJoyvTJ2MRROy5R7+2Yto+eNzO4oA==@lfdr.de
X-Gm-Message-State: AOJu0Yy8pTIXzEBAIZq8fT8QhLJRh8TSvjDdRd3bOg0aQWoslJUeasw5
	Wg6By7bOJiqdU7Zi/IW49jRMbT0HUmwSduYleMyXYS3DsObzzzIO
X-Google-Smtp-Source: AGHT+IE66mfdnEPj9QJ6TD+86V+uAnVhsT/4hLTDqK1Nmo9GJeQnApSrVfFhwthYrNcuJR2+niYZsg==
X-Received: by 2002:a05:6902:2b85:b0:e39:59b6:4202 with SMTP id 3f1490d57ef6-e39d3e1c8aamr8864861276.22.1733330567006;
        Wed, 04 Dec 2024 08:42:47 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:b10d:0:b0:e38:94e3:87e with SMTP id 3f1490d57ef6-e39f1aac5b9ls47832276.0.-pod-prod-07-us;
 Wed, 04 Dec 2024 08:42:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUK1yD/wCXjYiUKlgIc2rN3jjwBQhtwT2TECHhzRLXa4tCSFgNW5qgaLx+8a386j63G5xPXIpIXp8mo@googlegroups.com
X-Received: by 2002:a05:690c:360a:b0:6ef:5119:6f28 with SMTP id 00721157ae682-6efacf64df2mr103077027b3.8.1733330563385;
        Wed, 04 Dec 2024 08:42:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733330563; cv=none;
        d=google.com; s=arc-20240605;
        b=k8yTCZFahHcWwI+8DXTEFrK+voQ44+KzQRUvWWcGuzMHo93JTEHuHysMHYEUFTKEVA
         sOCZ266Sf3R8+D0pht8xgQNG6Y6oVOF0F435bGjyfDGziM11y8wpcUGyA3o2ShN8IWw+
         gZvTPBXnZnwj/WdeyYGrnjU4e5EL6X8y/lUEBsToIsNbLbV40TabLvulGjEaLEbInwjS
         52QiYa4nyE4AtsCS2Ce0H0snQE1FWLd3TuWcQOgmar+1rW9nDLnUyHW4oFwDYDbKU76X
         wsi2nnW8euGYHB8cojAW1zg5qotd7wkNjTE8VRpJ6AW8Li6U+MmJShUrS3unpWf6Z3Rt
         SvTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=+N30QcLm5000kN2TjeLv2fVORC4NYLWEtjbh9ZTVErE=;
        fh=xcq6sBJfibVfNOjpLIavoMKq5fWnlvCWuYHkadcx76w=;
        b=D65TNln19Ns/WZv3daJDhc5BhoYShYyJJOOd80LNhs2oW0Zw7oYYkGlvoDrRpiWeXv
         8qY6mnVrvI6F/kSLUqmL/xeaOAJZ/FTR1rMsodw0eQmLYsyEhLnN5as/fM4GlEMcqhH5
         ffTCzoH2rT7705/NvGcTYu4ib2Xntl/TFXUrynpXDCaVnzIzrwu+hkPK2FB3rgSPBDvg
         i/EWpliOtFB/2jdTBUq6xMQ/CSxIFFwwzZLJfQtLm7vbBM5fjXiMyogHZDKSmj5ncsrm
         sEfWzLS7fx5L5BODmdfhAQbHnvj1cDtWuIC5JqrzUrs69Zl4FLz8dJAgKgYJTpZKJsEq
         2/Xw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=jwLrm3XJ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=jwLrm3XJ;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id 00721157ae682-6ef4dc27d6asi4692577b3.2.2024.12.04.08.42.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 08:42:43 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id DBE1112816C9;
	Wed, 04 Dec 2024 11:42:41 -0500 (EST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavis, port 10024)
 with ESMTP id H1OGkhq900B6; Wed,  4 Dec 2024 11:42:41 -0500 (EST)
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4302:c21::a774])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 13309128116A;
	Wed, 04 Dec 2024 11:42:36 -0500 (EST)
Message-ID: <5c905df49a332b1136787a524955b46b6153c012.camel@HansenPartnership.com>
Subject: Re: [PATCH v2 00/32] driver core: Constify API device_find_child()
 and adapt for various existing usages
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Zijun Hu <zijun_hu@icloud.com>, Thomas =?ISO-8859-1?Q?Wei=DFschuh?=
	 <thomas@t-8ch.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Uwe
 =?ISO-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>, "Rafael J. Wysocki"
 <rafael@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jean
 Delvare <jdelvare@suse.com>,  Guenter Roeck <linux@roeck-us.net>, Martin
 Tuma <martin.tuma@digiteqautomotive.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Andreas Noever <andreas.noever@gmail.com>, Michael
 Jamet <michael.jamet@intel.com>, Mika Westerberg
 <mika.westerberg@linux.intel.com>,  Yehezkel Bernat
 <YehezkelShB@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Bartosz
 Golaszewski <brgl@bgdev.pl>, Andrew Lunn <andrew@lunn.ch>, Vladimir Oltean
 <olteanv@gmail.com>,  "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Dan Williams
 <dan.j.williams@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Dave
 Jiang <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>, Takashi
 Sakamoto <o-takashi@sakamocchi.jp>, Jiri Slaby <jirislaby@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, Srinivas Kandagatla
 <srinivas.kandagatla@linaro.org>, Lee Duncan <lduncan@suse.com>, Chris
 Leech <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Nilesh Javali
 <njavali@marvell.com>, Manish Rangankar <mrangankar@marvell.com>,
 GR-QLogic-Storage-Upstream@marvell.com, Davidlohr Bueso
 <dave@stgolabs.net>, Jonathan Cameron <jonathan.cameron@huawei.com>, Alison
 Schofield <alison.schofield@intel.com>, Andreas Larsson
 <andreas@gaisler.com>, Stuart Yoder <stuyoder@gmail.com>, Laurentiu Tudor
 <laurentiu.tudor@nxp.com>, Jens Axboe <axboe@kernel.dk>, Sudeep Holla
 <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, Ard
 Biesheuvel <ardb@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, 
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-hwmon@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-usb@vger.kernel.org, linux-gpio@vger.kernel.org,
 netdev@vger.kernel.org,  linux-pwm@vger.kernel.org, nvdimm@lists.linux.dev,
  linux1394-devel@lists.sourceforge.net, linux-serial@vger.kernel.org, 
 linux-sound@vger.kernel.org, open-iscsi@googlegroups.com, 
 linux-scsi@vger.kernel.org, linux-cxl@vger.kernel.org, 
 sparclinux@vger.kernel.org, linux-block@vger.kernel.org, 
 arm-scmi@vger.kernel.org, linux-efi@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Date: Wed, 04 Dec 2024 11:42:34 -0500
In-Reply-To: <235ce0a9-1db1-4558-817b-6f92f22be5ab@icloud.com>
References: <20241203-const_dfc_done-v2-0-7436a98c497f@quicinc.com>
	 <g32cigmktmj4egkq2tof27el2yss4liccfxgebkgqvkil32mlb@e3ta4ezv7y4m>
	 <9d34bd6f-b120-428a-837b-5a5813e14618@icloud.com>
	 <2024120320-manual-jockey-dfd1@gregkh>
	 <b9885785-d4d4-4c72-b425-3dc552651d7e@icloud.com>
	 <8eb7c0c54b280b8eb72f82032ede802c001ab087.camel@HansenPartnership.com>
	 <8fb887a0-3634-4e07-9f0d-d8d7c72ca802@t-8ch.de>
	 <f5ea7e17-5550-4658-8f4c-1c51827c7627@icloud.com>
	 <108c63c753f2f637a72c2e105ac138f80d4b0859.camel@HansenPartnership.com>
	 <235ce0a9-1db1-4558-817b-6f92f22be5ab@icloud.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=jwLrm3XJ;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=jwLrm3XJ;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Wed, 2024-12-04 at 20:26 +0800, Zijun Hu wrote:
> On 2024/12/3 23:34, James Bottomley wrote:
> > > > This also enables an incremental migration.
> > > change the API prototype from:
> > > device_find_child(..., void *data_0, int (*match)(struct device
> > > *dev, void *data));
> > >=20
> > > to:
> > > device_find_child(..., const void *data_0, int (*match)(struct
> > > device *dev, const void *data));
> > >=20
> > > For @data_0,=C2=A0 void * -> const void * is okay.
> > > but for @match, the problem is function pointer type
> > > incompatibility.
> > >=20
> > > there are two solutions base on discussions.
> > >=20
> > > 1) squashing likewise Greg mentioned.
> > > =C2=A0=C2=A0 Do all of the "prep work" first, and then
> > > =C2=A0=C2=A0 do the const change at the very end, all at once.
> > >=20
> > > 2)=C2=A0 as changing platform_driver's remove() prototype.
> > > Commit: e70140ba0d2b ("Get rid of 'remove_new' relic from
> > > platform driver struct")
> > >=20
> > > =C2=A0introduce extra device_find_child_new() which is constified=C2=
=A0 ->
> > > use *_new() replace ALL device_find_child() instances one by one
> > > ->=C2=A0remove device_find_child() -> rename *_new() to
> > > device_find_child() once.
> > Why bother with the last step, which churns the entire code base
> > again?
>=20
> keep the good API name device_find_child().

Well, I think it's a good opportunity to rename the API better, but if
that's the goal, you can still do it with _Generic() without churning
the code base a second time.  The example is in
slab.h:kmem_cache_create

> > Why not call the new function device_find_child_const() and simply
> > keep it (it's descriptive of its function).=C2=A0 That way you can have
> > a patch series without merging and at the end simply remove the old
> > function.
>=20
> device_find_child is a good name for the API, 'find' already means
> const.

Not to me it doesn't, but that's actually not what I think is wrong
with the API name: it actually only returns the first match, so I'd
marginally prefer it to be called device_find_first_child() ... not
enough to churn the code to change it, but since you're doing that
anyway it might make sense as an update.

Regards,

James

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
5c905df49a332b1136787a524955b46b6153c012.camel%40HansenPartnership.com.

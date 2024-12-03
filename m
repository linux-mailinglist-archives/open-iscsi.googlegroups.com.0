Return-Path: <open-iscsi+bncBDXO746SYYBRBDU5XS5AMGQEEEDMTVI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D3BA9E1E75
	for <lists+open-iscsi@lfdr.de>; Tue,  3 Dec 2024 14:58:43 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id 41be03b00d2f7-7fc62de66b5sf5605242a12.2
        for <lists+open-iscsi@lfdr.de>; Tue, 03 Dec 2024 05:58:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733234321; cv=pass;
        d=google.com; s=arc-20240605;
        b=Gp0hYr3akcVG7T21ROvnxsDfOzADYRrRtrDOl4NFk3PZ3amG3BCLc1pwBILMVBSple
         w/LzZlufivDLCC42YIQlrHtCXxFBEnU1RclkLw/m7/znC2iBOuv/wuQ1We6Z4lKOdgT+
         2gXkIKYPgsqeVeJ3fwSnH98aiccQY+LH4wBPyyB1jN5OqmzYNhHeReEi/Niph4jIKyf4
         Jxu237sCINWV/WiniXnSvYC1bPEmsAG3Q4E6ox1V9nnxYyYokYEKOXy18Ua0ZIAvOBX3
         krC2juHGoaoF35Rn0C6NTb4MxqhFNcbGIgkIPIvJtMwfu5nz59QxvWFRgbkao+5truJE
         +wtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=O06SiXvRIidTtgwAh8a8hgOOhOaRsM1LAhJs8FBsg0Y=;
        fh=CFy9RjUky1sQPINxpXaojJlkaA7p8KrrXqVt1JJ+2xw=;
        b=V8LyD/d5cV8L18F6o0oJ53O9s7kFP2PS3dHaUfKblfMVxDNyvTCsPrgREtXZuSU7Kg
         zCpqJBCr7+YSgsQQ4XOiajs1ug1qPQHCo1z33NAzViwBNoEM2kun/i3QDMa4sGHCf/er
         QuFX8zdOgLpmsAF4r60FO5f2zu7DvBB5yL7BhRxzqDSnBPHoS79Ec17d9jc9mwPHjmPi
         Ydf+eQyc7HtmmGO0Dt4Bp49veIjrUXDUoC1aLKviK+ulaVxXRZIJwYalh6+LLzS6suPH
         2cgtQ5xLjQfUbBBugbb39SjBRJhoUY/JwDbwqDJ7qFqBo/4vGmCCMUTqBXFw651LgWL2
         rV7g==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=HLHxETwe;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=HLHxETwe;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733234321; x=1733839121; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O06SiXvRIidTtgwAh8a8hgOOhOaRsM1LAhJs8FBsg0Y=;
        b=gITCy8qBianlVZUE/aLoMkrN412NDrVZdGpTR1nkOo0fxhqni0bSi40raEPy5VkFh2
         BE7l7EI8reTfX7CuNDu5zD0TKOFeCrdSch/VVcMEzkohNB/8rK1FkS6jn//UwPUB7qPx
         p9a0zjxkhUDLsvEqfpTOvCpyPG3p8iQe/s5bU1IFQKIb2Fdz+JH2XCS93y2PtW21F8G3
         wLYVWPHRWfS/jWTgwPzf3yU4uhSrd9rrjJa/JYH8eu/5bvjQbqjM6dYUqGRFsi5YF0PU
         conBAj/9VsHwBp62w/WbeSmT0DYBdF/uVJrTSAR+GTlYwa3f0uqU//yEW9Pe+eGd+s2S
         2+HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733234321; x=1733839121;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O06SiXvRIidTtgwAh8a8hgOOhOaRsM1LAhJs8FBsg0Y=;
        b=LBKe/93Jmy303emae5c0L/n+1u+mxweSTlcsMfzaVsBYVU3fXmbSkcWgjF1aWnPc/K
         K/gQ/ipM1xZb+08nUDAiz0AvYRZD7bkq/CLvKF4rstaT+upOyArdPS6EmjCqPBswYzR5
         bEYI9uTW4tsqHrgzLQL372DsiMduTRtvdr1unhteKRmbVjgkXbBgc1rl6Tx58EUGk86g
         E5jHWT22UX722fafDQ/LW/NOL1QeUlWivn7LrrlVRPzGDR/OIcD3NiM4T7YfRTsuGGbu
         Wxq37PJVqksq0DRgPD9zRMq77/GJSFioX7XUkFnGr9bJKhBrzkaljwAfZtR1mLl7HP+T
         MFqQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCUcZWXGle7eJKKQ0OdC2Jyktiy5GjvsK6PeLwkYS1SGSr/ohhkWPcnUrY+Y+wEzTxtsgDQ95w==@lfdr.de
X-Gm-Message-State: AOJu0Yz5MMBGUmFxK1AQdVw58LMr5VqG6veAuYOjOBHpSCr1+05KS7W7
	RkDqQn3reTfDbAVbCahiE+427fjppRHlgKoSS09Wiybltc+ZOoWZ
X-Google-Smtp-Source: AGHT+IFk0W0pP8IIJYx3e8fQZ5hym/8kO3lCQi79DILTLnDFatSDHdw9rhylGstd478oFztrCJfUrQ==
X-Received: by 2002:a05:6a20:918d:b0:1e0:d6ef:521a with SMTP id adf61e73a8af0-1e1653a7c14mr3666736637.1.1733234321231;
        Tue, 03 Dec 2024 05:58:41 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aa7:8281:0:b0:725:46c2:fbe7 with SMTP id d2e1a72fcca58-72546c2fc47ls3477128b3a.1.-pod-prod-03-us;
 Tue, 03 Dec 2024 05:58:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUIidCGjcyVTIcTiFYqpNBtT6GcFlPSvz44R0Y3hQJ0Eh2EgGzEHnw1FtzOFYf1M8vR/jkokDydAFaJ@googlegroups.com
X-Received: by 2002:a05:6a00:2e07:b0:724:f404:7101 with SMTP id d2e1a72fcca58-7257fa45dbamr3208401b3a.1.1733234317166;
        Tue, 03 Dec 2024 05:58:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733234317; cv=none;
        d=google.com; s=arc-20240605;
        b=L9IcfEmNEs4TdtEQu3YmAK49s1iKRksz145RPzAA01LAxEtbqSWUXdo2mQiSIPNjcQ
         8XlQgyJA9on74UKm72fyTd/tDZT3ObV/8Knp0FkAYYob4v6/fRBPmNq9TfcFpNPblCee
         QwHKLzfqO3w6YLJHVRI+FaD72mNPRwKGHUfrFvIl2NtDOrorIlyMITWIY++QDFBehyr4
         gGxYncYeds4rY5rLoTBDsXb5dzNMyXtyQ4qkCWrvJ5s5ug/RjuvzGzmMCmvSCfaZ+ldP
         8EAcvohlDRJPz7wIulikPE4LYDfZZ7/f+1EQA9ScvgEQfYRqXW4R/ODZ3DFuCvFRXoRV
         kaOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=Kf7crbb0fpn1qjE7M5Xj2inOsmMty268qLui5ks7IFo=;
        fh=s/JQ7+FM87ecO5ocYNLGt7sd8jAsm9jRLVPY+dpNOMk=;
        b=QFp9XJ//WFPPY1vHlZviDnpYqU7/aDF52Wx2TfcmqTCvfCED4dDtuvjzVlE+g2ql2W
         3bnRIwIk2PRA0IQN+XApNF9+8+EZOTw92yt6VYsFKILLTNcUOZigIMsXddBzAlUCzHBa
         +aqesU9L3oVdkcVVtx7C/I8UKUrdACEN5mOvJhoILO+yLbYbj38fRytIBjrMlbAwYOvW
         JNmi+GN3Jp+oxprTjqZy08MZBNCvwonW04d2SNsbZO+6EpapONlxEkOb96VIR3/je9l4
         CNHJBde53O28SjyAkkEceYKUExoxW3nuDTlcED+8XsLjDaP1dpap9nMes9yui27oVLEA
         Zruw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=HLHxETwe;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=HLHxETwe;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com ([96.44.175.130])
        by gmr-mx.google.com with ESMTPS id 41be03b00d2f7-7fc9f72ee67si636571a12.1.2024.12.03.05.58.37
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 05:58:37 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 96.44.175.130 as permitted sender) client-ip=96.44.175.130;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id EA9E31287992;
	Tue, 03 Dec 2024 08:58:33 -0500 (EST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavis, port 10024)
 with ESMTP id fwoc-_7eWgu1; Tue,  3 Dec 2024 08:58:33 -0500 (EST)
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4302:c21::a774])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id 2A12D1287986;
	Tue, 03 Dec 2024 08:58:28 -0500 (EST)
Message-ID: <8eb7c0c54b280b8eb72f82032ede802c001ab087.camel@HansenPartnership.com>
Subject: Re: [PATCH v2 00/32] driver core: Constify API device_find_child()
 and adapt for various existing usages
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Zijun Hu <zijun_hu@icloud.com>, Greg Kroah-Hartman
	 <gregkh@linuxfoundation.org>
Cc: Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <ukleinek@kernel.org>, "Rafael J.
 Wysocki" <rafael@kernel.org>, Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
  AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Jean
 Delvare <jdelvare@suse.com>, Guenter Roeck <linux@roeck-us.net>,  Martin
 Tuma <martin.tuma@digiteqautomotive.com>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Andreas Noever <andreas.noever@gmail.com>, Michael
 Jamet <michael.jamet@intel.com>, Mika Westerberg
 <mika.westerberg@linux.intel.com>, Yehezkel Bernat <YehezkelShB@gmail.com>,
  Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Andrew Lunn <andrew@lunn.ch>,  Vladimir Oltean
 <olteanv@gmail.com>, "David S. Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>,  Jakub Kicinski <kuba@kernel.org>, Paolo Abeni
 <pabeni@redhat.com>, Simon Horman <horms@kernel.org>, Dan Williams
 <dan.j.williams@intel.com>, Vishal Verma <vishal.l.verma@intel.com>, Dave
 Jiang <dave.jiang@intel.com>, Ira Weiny <ira.weiny@intel.com>, Takashi
 Sakamoto <o-takashi@sakamocchi.jp>, Jiri Slaby <jirislaby@kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,  Srinivas Kandagatla
 <srinivas.kandagatla@linaro.org>, Lee Duncan <lduncan@suse.com>, Chris
 Leech <cleech@redhat.com>,  Mike Christie <michael.christie@oracle.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, Nilesh Javali
 <njavali@marvell.com>, Manish Rangankar <mrangankar@marvell.com>, 
 GR-QLogic-Storage-Upstream@marvell.com, Davidlohr Bueso
 <dave@stgolabs.net>,  Jonathan Cameron <jonathan.cameron@huawei.com>,
 Alison Schofield <alison.schofield@intel.com>, Andreas Larsson
 <andreas@gaisler.com>, Stuart Yoder <stuyoder@gmail.com>, Laurentiu Tudor
 <laurentiu.tudor@nxp.com>, Jens Axboe <axboe@kernel.dk>, Sudeep Holla
 <sudeep.holla@arm.com>, Cristian Marussi <cristian.marussi@arm.com>, Ard
 Biesheuvel <ardb@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>, linux-kernel@vger.kernel.org,
  dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-hwmon@vger.kernel.org, 
 linux-media@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-gpio@vger.kernel.org, netdev@vger.kernel.org,
 linux-pwm@vger.kernel.org,  nvdimm@lists.linux.dev,
 linux1394-devel@lists.sourceforge.net,  linux-serial@vger.kernel.org,
 linux-sound@vger.kernel.org,  open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org,  linux-cxl@vger.kernel.org,
 sparclinux@vger.kernel.org,  linux-block@vger.kernel.org,
 arm-scmi@vger.kernel.org, linux-efi@vger.kernel.org, 
 linux-remoteproc@vger.kernel.org, Zijun Hu <quic_zijuhu@quicinc.com>
Date: Tue, 03 Dec 2024 08:58:26 -0500
In-Reply-To: <b9885785-d4d4-4c72-b425-3dc552651d7e@icloud.com>
References: <20241203-const_dfc_done-v2-0-7436a98c497f@quicinc.com>
	 <g32cigmktmj4egkq2tof27el2yss4liccfxgebkgqvkil32mlb@e3ta4ezv7y4m>
	 <9d34bd6f-b120-428a-837b-5a5813e14618@icloud.com>
	 <2024120320-manual-jockey-dfd1@gregkh>
	 <b9885785-d4d4-4c72-b425-3dc552651d7e@icloud.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=HLHxETwe;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=HLHxETwe;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 96.44.175.130 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
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

On Tue, 2024-12-03 at 21:02 +0800, Zijun Hu wrote:
> On 2024/12/3 20:41, Greg Kroah-Hartman wrote:
> > On Tue, Dec 03, 2024 at 08:23:45PM +0800, Zijun Hu wrote:
[...]
> > > or squash such patch series into a single patch ?
> > >=20
> > > various subsystem maintainers may not like squashing way.
> >=20
> > Agreed, so look into either doing it in a bisectable way if at all
> > possible.=C2=A0 As I don't see a full series here, I can't suggest how
> > it needs to happen :(
> >=20
>=20
> let me send you a full series later and discuss how to solve this
> issue.

It's only slightly more complex than what we normally do: modify all
instances and then change the API.  In this case you have an additional
problem because the prototype "const void *" will cause a mismatch if a
function has "void *".  The easiest way to solve this is probably to
make device_find_child a macro that coerces its function argument to
having a non const "void *" and then passes off to the real function.=20
If you do that in the first patch, then you can constify all the
consumers and finally remove the macro coercion in the last patch.

James

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
8eb7c0c54b280b8eb72f82032ede802c001ab087.camel%40HansenPartnership.com.

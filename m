Return-Path: <open-iscsi+bncBDXO746SYYBRBI6KXS5AMGQEJT2S2NY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BA62F9E2350
	for <lists+open-iscsi@lfdr.de>; Tue,  3 Dec 2024 16:35:03 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id d9443c01a7336-2156cb2c3d2sf36921625ad.1
        for <lists+open-iscsi@lfdr.de>; Tue, 03 Dec 2024 07:35:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733240102; cv=pass;
        d=google.com; s=arc-20240605;
        b=BhG73wIwzseFZ2EQ/nCudGI4KLjPDxyHVoKzLReYorKVIYhEOswdD7IZGWyex1nvMH
         80DeFfM5WkC2qTZ0YK2nWKX71ufGI1aZiT59oRRLbY7UKY0M5u6qWeQPjj3fILMsKUKp
         e/G5C3Fg4LjDw8LrU53ts8m92anEq/Riww40omQFPgnHVR7NS/tnoQ1esWHFeBv5cJrr
         PQxsHXeSFw0i6ovcG8nRNsK5idSbhpGrX98tnzYlPNu7j6/ZxNIruTaWGHLIV1YvxfJt
         y5sdp/wocU2iJqJZyIobqkTp/zzQw3TQCugBUy2Dppdyj4jIQ1/eN7Sd5KsjAEMyIdz8
         73Og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=QaQOi+8XRePaoFUm9oaFioMFuANM1z5N55xYKQM8GYs=;
        fh=SdpvmksECcULDMb7p/1/XBC5TBZgI4+lE6XJyGchvA8=;
        b=QpfPZlhPvsKtSv+t+d4SKeE61Ed2F/6kER5lZVWlwUeTqMY5NCojYLDlkTATH9AIo6
         SXwmnyEtTJ5WCVqrNoLVO/SGFr0jUzp5Q36wTYTbhqz7VZ146iuL7ChqJ/HMAa4Ux5R/
         C/Mt8j4A06F1itjDce64qLQW0oDzW0TWza781nIefZSdi3RyqGfDmefaEXnLJfwv42c7
         DXU+89x26+b3xPfCucrpcGyyhMffQ76hwshOo+e65CITNORC48kQN8s7qgy0lp/KsWj8
         4sgSD1GpWvi2nsL+7blvcDljLmZts3xauBXZTJ4Bx56FfMK7e/zyaxgVMoLMMNFI0s/Z
         dXdg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=eZ4U4tRU;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=eZ4U4tRU;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1733240102; x=1733844902; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QaQOi+8XRePaoFUm9oaFioMFuANM1z5N55xYKQM8GYs=;
        b=vVblknUwGm9fDjHVMWkxssrVoo0N+yH0ohWNZ2pHjZJZQRHU90Vm2ApY+PF1Gpe9IS
         caQY6wvOpNgCwlzxBo4MVinA1TCh4KefaoKf9fUQfSLMezplvgmF+BFmKX1JnIU2M6rN
         XRPvPjHkjd46NsIE625FcBqF+Y4FJ/xvwNuZa67CNZZqrbCX8d2BpG/Qu7Vdk3fBfZfQ
         roPNnQqMNO767Uo6beBKjOw6H8SI32F2H2nMc9lxatiVO7ac3/FAAjEZMFMgV5pjIpI7
         yG39JnkSu9k/Xt3BCsWPJ0s/gX4QBTnPhOAkpIn9aBe7gdoSnP1k0tk+JnX2ji+oFICw
         iQCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733240102; x=1733844902;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QaQOi+8XRePaoFUm9oaFioMFuANM1z5N55xYKQM8GYs=;
        b=wRCUO41sQvuAwjONL5wCgTDTkkgiAuquyIC63DkZLO4oiDn0cQFqQCymrfWVOU1hmw
         xdJcvR6PbN50Asi7z61qPxKdKUMdbhCwSczDOneDytNKcRRYAkh5UJTa51UQO8XC6OZX
         AZHdwy69gfuFGaBwoDBjVUksIYqA1+TQ9Oq816PfDjpJ/Ek8rNS9/5dp5NXQNo/hJRys
         YiT2q5R4SdFBl3SMFI2yUE8+NVlKL6/nIao5tc4HgEpTjGtW8efhXKvQmArQDd+H/56D
         6lJhE0W/HEoPKCDyUdzUVygvPAB1iOEbGV6MDeqZP9vtMA7s7HaTOmhgNkcWIn/9l5vj
         aFXA==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCXol2PaecYhyEo+Un/y/oPysu+5jgkdooUeCpTDofWoBWnj0VRYf4Z+tTl+DMVDmyQdYBHGww==@lfdr.de
X-Gm-Message-State: AOJu0YzH2e27zBIeEJEDKCd8MCnabdZUxlVS7hNsR8G4Y/GdLRKrehZl
	qXAX0fchh4mUHzf5dmmaRt39uXSrv1j64ACA4T3uLz5qFQFg8BSZ
X-Google-Smtp-Source: AGHT+IHvpEj3RoH/NJMOPTtXlPIRZWpEpsKjEU3djWVsvEolRn0WrzguZ0RvfcCGzvFxyGlSEWBJVA==
X-Received: by 2002:a17:902:d4d2:b0:215:bf1b:a894 with SMTP id d9443c01a7336-215bf1ba9bcmr32254295ad.24.1733240101775;
        Tue, 03 Dec 2024 07:35:01 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:903:74b:b0:215:6af2:fed6 with SMTP id
 d9443c01a7336-2156af2ff53ls19656745ad.0.-pod-prod-06-us; Tue, 03 Dec 2024
 07:34:58 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVSgh6p9yw9DOcD2XM9TcCfAvB/sMnAJ+Evr7AL88ru7LAKRXxSI9OFdxp3EJ/It8E46ygzr4Uw4Byd@googlegroups.com
X-Received: by 2002:a17:903:98e:b0:215:5aba:7a8f with SMTP id d9443c01a7336-215bd269d60mr38213305ad.46.1733240097914;
        Tue, 03 Dec 2024 07:34:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733240097; cv=none;
        d=google.com; s=arc-20240605;
        b=O5sVX7KRoTRXk2SNff0C1o2GoWYNZJrTUHs7PsvVZeNmeJpYMb2UPrTyoKNkpQTTAs
         ut+xZqX9d/ig5bUVJbttehd3f47S+Y2KSvPaja2WsuGO42ZFGPkaWzfIYp9XEOmSDZx3
         /iZoCkQRAg7UIx5y05ZSmVX7Jawm7lKp5/Og3WCyaf46GoKyYZLTFEKwJ/2Lvg/OZt68
         fYO5HECpd6vpP1KSzta7dcKz5Q6u0Wjfsf9qDgrf2D5o6jiN2/pj15KBuNXmdyvyaQgg
         w4qubumhqx2eE1kVC13qYSZLqkxBnNsPRJ7SEwzUsS4ILJiW5TfLPH+pcuc9/D+MRLeO
         ofmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=6OP+UCJ6wr/TGKZQnz7Bra/6Gw4liMhP5XUDX1AVETM=;
        fh=xcq6sBJfibVfNOjpLIavoMKq5fWnlvCWuYHkadcx76w=;
        b=UHu9hDLsVekBU4Y8jexQ2yPS7pNrHILv10adKOipJ9IEz7q+JErw7EdsSxXF0noHh6
         wR/uP6DdwHf3zhAHr41NALyQ4lFz+Q63f+mbdnIB3Jj6hI22mH09N/7aBfUzocvBuwLg
         HkUvW2Tti2D5URTP8U/YFcUCwIqQCL0c9NXP4GpgMzHbI/OhUuWEu7+HdcP/Pu3FIU+H
         BMTSXfyu4d9qd/HawzpNFu0ObMBLsX0TL6vXhluoszdJElRSncepCGmpRtVDG2qbZaaF
         hlq4LXbjocxIgq9BXn6fCbnC24xRNBnEDX72lIQsWwDYciU+0l1SHJn34lFtCm1+RJYD
         U3dA==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=eZ4U4tRU;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=eZ4U4tRU;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com ([2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id d9443c01a7336-215385fa8a6si3992365ad.6.2024.12.03.07.34.57
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 07:34:57 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id AB50D1286ACE;
	Tue, 03 Dec 2024 10:34:56 -0500 (EST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
 by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavis, port 10024)
 with ESMTP id voj3K1dfyxiH; Tue,  3 Dec 2024 10:34:56 -0500 (EST)
Received: from lingrow.int.hansenpartnership.com (unknown [IPv6:2601:5c4:4302:c21::a774])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(Client did not present a certificate)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id F32C01286A7D;
	Tue, 03 Dec 2024 10:34:50 -0500 (EST)
Message-ID: <108c63c753f2f637a72c2e105ac138f80d4b0859.camel@HansenPartnership.com>
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
Date: Tue, 03 Dec 2024 10:34:49 -0500
In-Reply-To: <f5ea7e17-5550-4658-8f4c-1c51827c7627@icloud.com>
References: <20241203-const_dfc_done-v2-0-7436a98c497f@quicinc.com>
	 <g32cigmktmj4egkq2tof27el2yss4liccfxgebkgqvkil32mlb@e3ta4ezv7y4m>
	 <9d34bd6f-b120-428a-837b-5a5813e14618@icloud.com>
	 <2024120320-manual-jockey-dfd1@gregkh>
	 <b9885785-d4d4-4c72-b425-3dc552651d7e@icloud.com>
	 <8eb7c0c54b280b8eb72f82032ede802c001ab087.camel@HansenPartnership.com>
	 <8fb887a0-3634-4e07-9f0d-d8d7c72ca802@t-8ch.de>
	 <f5ea7e17-5550-4658-8f4c-1c51827c7627@icloud.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=eZ4U4tRU;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=eZ4U4tRU;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
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

On Tue, 2024-12-03 at 22:56 +0800, Zijun Hu wrote:
> On 2024/12/3 22:07, Thomas Wei=C3=9Fschuh wrote:
> > On 2024-12-03 08:58:26-0500, James Bottomley wrote:
> > > On Tue, 2024-12-03 at 21:02 +0800, Zijun Hu wrote:
> > > > On 2024/12/3 20:41, Greg Kroah-Hartman wrote:
> > > > > On Tue, Dec 03, 2024 at 08:23:45PM +0800, Zijun Hu wrote:
> > > [...]
> > > > > > or squash such patch series into a single patch ?
> > > > > >=20
> > > > > > various subsystem maintainers may not like squashing way.
> > > > >=20
> > > > > Agreed, so look into either doing it in a bisectable way if
> > > > > at all possible.=C2=A0 As I don't see a full series here, I can't
> > > > > suggest how it needs to happen :(
> > > > >=20
> > > >=20
> > > > let me send you a full series later and discuss how to solve
> > > > this issue.
> > >=20
> > > It's only slightly more complex than what we normally do: modify
> > > all instances and then change the API.=C2=A0 In this case you have an
> > > additional problem because the prototype "const void *" will
> > > cause a mismatch if a function has "void *".=C2=A0 The easiest way to
> > > solve this is probably to make device_find_child a macro that
> > > coerces its function argument to having a non const "void *" and
> > > then passes off to the real function.  If you do that in the
> > > first patch, then you can constify all the consumers and finally
> > > remove the macro coercion in the last patch.
> >=20
> > Casting function pointers like that should be detected and trapped
> > by control flow integrity checking (KCFI).
> >=20
> > Another possibility would be to use a macro and _Generic to
> > dispatch to two different backing functions. See __BIN_ATTR() in
> > include/linux/sysfs.h for an inspiration.

That's way over complicated for this conversion: done properly there
should be no need for _Generic() compile time type matching at all.

> this way may fix building error issue but does not achieve our
> purpose. our purpose is that there are only constified
> device_find_child().
>=20
>=20
> > This also enables an incremental migration.
>=20
> change the API prototype from:
> device_find_child(..., void *data_0, int (*match)(struct device *dev,
> void *data));
>=20
> to:
> device_find_child(..., const void *data_0, int (*match)(struct device
> *dev, const void *data));
>=20
> For @data_0,=C2=A0 void * -> const void * is okay.
> but for @match, the problem is function pointer type incompatibility.
>=20
> there are two solutions base on discussions.
>=20
> 1) squashing likewise Greg mentioned.
> =C2=A0=C2=A0 Do all of the "prep work" first, and then
> =C2=A0=C2=A0 do the const change at the very end, all at once.
>=20
> 2)=C2=A0 as changing platform_driver's remove() prototype.
> Commit: e70140ba0d2b ("Get rid of 'remove_new' relic from platform
> driver struct")
>=20
> =C2=A0introduce extra device_find_child_new() which is constified=C2=A0 -=
> use
> *_new() replace ALL device_find_child() instances one by one ->=C2=A0
> remove device_find_child() -> rename *_new() to device_find_child()
> once.

Why bother with the last step, which churns the entire code base again?
Why not call the new function device_find_child_const() and simply keep
it (it's descriptive of its function).  That way you can have a patch
series without merging and at the end simply remove the old function.

Regards,

James

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
108c63c753f2f637a72c2e105ac138f80d4b0859.camel%40HansenPartnership.com.

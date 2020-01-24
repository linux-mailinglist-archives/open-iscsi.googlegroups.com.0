Return-Path: <open-iscsi+bncBDUOZNUSUMARBQ76VPYQKGQELOC6T4I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D674148868
	for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 15:29:24 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id f22sf1173886qka.10
        for <lists+open-iscsi@lfdr.de>; Fri, 24 Jan 2020 06:29:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1579876163; cv=pass;
        d=google.com; s=arc-20160816;
        b=dBXX23htWn557HJLFm9dADRZT9gfyKq7OeZHq18un4oh3UVKEwomf1aNXYH73wFUCE
         cqkFNoUyw8UJpaSE2xlw9mr9bMYBGIXNbDcBGqs3PICIvsS/wyGCRDm7ShH9hRVHew8m
         lAakTWkUDKP9o0RJimviuCBjgiAhJ5CsGqHzaoFM+xotOsOOopia3viLetlLYAHFH/tJ
         /7SYbg2IlXBIdFmgQ0IKqCyXNP+XW27e7tghUW+1FYJbwpUc0CuJ6mGp2jjjLndsjj4/
         Sgyqdwfhw1t/MnjWxefn292VBAjkcuWe1Stme/GLyIbpNPr7KD/txAwkwJp5h3h92+Vj
         2MmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:in-reply-to:to
         :references:date:subject:mime-version:content-transfer-encoding:from
         :sender:dkim-signature;
        bh=GRDMy83B47jH54g7n27A/TTVd1T9GRm14rwXwMzW8hY=;
        b=JxE+NYnS4src8e3ap1IsW6EsDjevTrcn+xmSEaEJmxAim01YtgLJXhQoMqoSc+MDqN
         ie/VB9uQS5Q9HupU96krnrG055/geKQGywqiznP0/SiOKi+ZyifAVLFDCmy2qa6I67J8
         N2ImYrtGOEuAP5e+DTWB9sx8I2YHEjFSlLc6PcG5bmoFp0wowzfBGtIh0C+nzZrQbLFG
         3R5A7QA+nwHl/AiqUPdQaW9ZvwLoQrqXFK6Rp4c74OYZzIp2K5v5s8qtsatkrFRocN3Z
         893EaFpX8M85IYC3qWBxFoFPMkTnVKLcnJyKsiLJrIiBfx/gsCKc2IM0z/ZK1w+SU3ag
         M4Sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@comcast.net header.s=20190202a header.b=VeFKc5qE;
       spf=pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:163 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=comcast.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:content-transfer-encoding:mime-version:subject:date
         :references:to:in-reply-to:message-id:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GRDMy83B47jH54g7n27A/TTVd1T9GRm14rwXwMzW8hY=;
        b=X4NKbDcCCaRR56VsnRX873zetHQMbS5CyL8srwv2FNEPFDxxlVE0LjX910LaRn0r+G
         1+KigTgVeutNypmIHwJiZbZIPLjUSEJYMSHSmVme2ZK3IMkJJ0AJLCvcnUu3JweSnsFy
         HH305PhohO+TULdjWtumhIqtE+VjS36yfM2iG8rn6XV7Tf+1iT5lJZ8JzzsG/lCLCfzP
         U5RDFZ94Kv0Eki9vad856ZffJx9AIZFXsD1Tz54ML0Mmj7fsb4N+06GAXrFKdIJLMrSc
         kE0gPGOxqlviLaniQ0eIT8FeQypHkddnNgsFmlyUUGVGPfXPsJ74BTc+am0gE1DEROfU
         /gtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:content-transfer-encoding
         :mime-version:subject:date:references:to:in-reply-to:message-id
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GRDMy83B47jH54g7n27A/TTVd1T9GRm14rwXwMzW8hY=;
        b=lFTCfyaIIZ6gH8h/IZYGm2VegxWT5hCgnmRy0zh1pYkApGb1XMyc0kXTwbQFfOc/ME
         r8/VZhRamWG03BrqauJJtj8mplpb2So7tUxlrn2oEzfqemuxeEl3HLLLoaScC4bal57i
         256NjC4oFPqdagiiCiWSIosmkjxX3gYnVF5xgVZzVC2EgF4LqzokySiRxiEHJJj08pMm
         cOzBlMeVS1Lvk3zzBGEtT6f6z1KlW+vQ8A3MdtBl5vVrVjaLW/Nk9d7V8qHe2QRBc3Ry
         rJhMgfBPygpFyYf/lNG2K4P+ohz6ujzmSX7MNmuGmqyj08wvfUpc2mPROSW6SSaDNh1b
         2sWA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWM1VxNKJMQDVtRdRW6WGTwgDoGpnYNsassP4nXY3Jw5r85KNjB
	wZrEUemm1RstGKTGkFFGlbE=
X-Google-Smtp-Source: APXvYqy44D4bkLWEIK0PoV41zIzCUMSm3rZXAT1ydzolUIl5vIbshtccOyJ6vv0vOlbLov4Xr9PGlg==
X-Received: by 2002:ae9:f30e:: with SMTP id p14mr2820777qkg.186.1579876163199;
        Fri, 24 Jan 2020 06:29:23 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:480c:: with SMTP id g12ls793443qtq.11.gmail; Fri, 24 Jan
 2020 06:29:22 -0800 (PST)
X-Received: by 2002:ac8:5243:: with SMTP id y3mr2358960qtn.79.1579876162863;
        Fri, 24 Jan 2020 06:29:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1579876162; cv=none;
        d=google.com; s=arc-20160816;
        b=lIxDHAonIkfZx/gW4XlnqlMzm/0GCuxzDGxcX7K5u0XJPLkbjKu6ccto1ECZCrNUjJ
         7gx1i/Sg9xUNL+UMPkur68cbqQgRj6XBPP3TC2ZSXQKvj7I5UOOoWrkmBZ5XtoDhJviU
         zNC9W1RjK6fkrSwFYG0T1l485eJ8TSvQwCR14NK/7xH2vse5FRKtfhqn8NayeE/Olwct
         NVzEJHS7vuchOFw9nOScsYjHF1sc/CMd6Z0fCxWnCPtr4MnWp235ryDhnCYDP8Z//uRO
         xJdIACjYV2IxdhPE0XSiHcMW84NEO9V7Md/6TDGOz9jABfXwpvH4/CrwuO/PBmBttUvP
         cuQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:in-reply-to:to:references:date:subject:mime-version
         :content-transfer-encoding:from:dkim-signature;
        bh=3GuTKx4qmTSX4vXQ3n+l33Fp6vluibKl5pEYZJrl1SQ=;
        b=O4HaWrOIkhdv8XwWVm11utqFdQz//J7nZAKFVi/aA7bd0UEyLxeifEsnMzCiBCK28E
         bvzIc/DeeC2nNY7kFP4aAd+JUm/uzvHT4wFur+IxlAcfgUd1R20DB9uK5pYZnGSp0amc
         UZC9LVOkQ/piy5u/7BQe3VCR9ZRcGPFM+3nPVYQESyvztkL/oIia3Pj+bPEx5Sp2FzTB
         5vtweXzrMjtiKxpYjMAQ0AQZE+/Yj01bW5/d7CirE5eX0mheWHXDqUl99wruiWtcCLXf
         q68I3SUefWF4JEsAvd8SNWecomBarXObDq29Dp1EhWOgvhTqBTjy09BfOp7UHZUaL+3z
         cTtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@comcast.net header.s=20190202a header.b=VeFKc5qE;
       spf=pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:163 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=comcast.net
Received: from resqmta-po-04v.sys.comcast.net (resqmta-po-04v.sys.comcast.net. [2001:558:fe16:19:96:114:154:163])
        by gmr-mx.google.com with ESMTPS id g2si303043qtv.3.2020.01.24.06.29.22
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Jan 2020 06:29:22 -0800 (PST)
Received-SPF: pass (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:163 as permitted sender) client-ip=2001:558:fe16:19:96:114:154:163;
Received: from resomta-po-04v.sys.comcast.net ([96.114.154.228])
	by resqmta-po-04v.sys.comcast.net with ESMTP
	id uzaPivPip9m4ouzxaisTuQ; Fri, 24 Jan 2020 14:29:22 +0000
Received: from pkoning.akdesign.com ([73.60.223.101])
	by resomta-po-04v.sys.comcast.net with ESMTPA
	id uzxWi1GgNksdauzxZivtYs; Fri, 24 Jan 2020 14:29:22 +0000
X-Xfinity-VAAS: gggruggvucftvghtrhhoucdtuddrgedugedrvdeggdeigecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucevohhmtggrshhtqdftvghsihdpqfgfvfdppffquffrtefokffrnecuuegrihhlohhuthemuceftddtnecunecujfgurhephfgtgfgguffffhfvjgfkofesthhqmhdthhdtvdenucfhrhhomheprfgruhhlucfmohhnihhnghcuoehprghulhhkohhnihhnghestghomhgtrghsthdrnhgvtheqnecukfhppeejfedriedtrddvvdefrddutddunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepphhkohhnihhnghdrrghkuggvshhighhnrdgtohhmpdhinhgvthepjeefrdeitddrvddvfedruddtuddpmhgrihhlfhhrohhmpehprghulhhkohhnihhnghestghomhgtrghsthdrnhgvthdprhgtphhtthhopehophgvnhdqihhstghsihesghhoohhglhgvghhrohhuphhsrdgtohhm
X-Xfinity-VMeta: sc=0.00;st=legit
From: Paul Koning <paulkoning@comcast.net>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: iSCSI Multiqueue
Date: Fri, 24 Jan 2020 09:29:16 -0500
References: <fa6d0ccd-0fdc-4fa2-bdee-7a8cf22f18b1@googlegroups.com>
 <8f236c4a-a207-4a0e-8dff-ad14a74e57dc@googlegroups.com>
 <1a730951-21eb-ae5f-a835-ad92c512978c@vlnb.net>
To: open-iscsi@googlegroups.com
In-Reply-To: <1a730951-21eb-ae5f-a835-ad92c512978c@vlnb.net>
Message-Id: <B7F71EA1-6E05-43A5-BADA-4F29550424D6@comcast.net>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: paulkoning@comcast.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@comcast.net header.s=20190202a header.b=VeFKc5qE;       spf=pass
 (google.com: domain of paulkoning@comcast.net designates 2001:558:fe16:19:96:114:154:163
 as permitted sender) smtp.mailfrom=paulkoning@comcast.net;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=comcast.net
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Spam-Checked-In-Group: open-iscsi@googlegroups.com
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>



> On Jan 24, 2020, at 3:43 AM, Vladislav Bolkhovitin <vst@vlnb.net> wrote:
>=20
>=20
>> ...
>=20
> From my old iSCSI target development days, MS is fundamentally not
> friendly to multi-queue, because it requires by the iSCSI spec to
> preserve order of commands inside the session across multiple
> connections. Commands serialization =3D> shared lock or atomic =3D> no
> multi-queue benefits.
>=20
> Hence, usage of MS for multi-queue would be beneficial only if to drop
> (aka violate) this iSCSI spec requirement.
>=20
> Just a small reminder. I have not looked in the updated iSCSI spec for a
> while, but don't remember this requirement was anyhow eased there.
>=20
> In any case, multiple iSCSI sessions per block level "session" would
> always be another alternative that would require virtually zero changes
> in open-iscsi and in-kernel iSCSI driver[1] as opposed to complex
> changes required to start supporting MS in it as well as in many iSCSI
> targets around that currently do not[2]. If I would be working on iSCSI
> MQ, I would consider this as the first and MUCH more preferable option.
>=20
> Vlad
>=20
> 1. Most likely, completely zero.
> 2. Where requirement to preserve commands order would similarly kill all
> the MQ performance benefits.

My reaction, from a similar background, matches yours.  iSCSI makes things =
quite hard by requiring ordering across the connections that make up a sess=
ion.  That discourages implementation of multi-connection support in target=
s (it's optional).  In some cases, it entirely rules it out; for example, i=
n the EqualLogic storage arrays it would be pretty useless to support multi=
-connection since the connections could not be spread over multiple arrays,=
 and for that reason we ruled out that feature.

By contrast, MPIO (several independent sessions used by the storage stack a=
s a wider and/or more fault tolerant pipe to the storage) requires essentia=
lly no work at the target and gives at least as much benefit as MCS for a l=
ot less work.

	paul


--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/B7F71EA1-6E05-43A5-BADA-4F29550424D6%40comcast.net.

Return-Path: <open-iscsi+bncBC7KRMXASEIRB366YLCAMGQE4DCPYXY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1EFB1A291
	for <lists+open-iscsi@lfdr.de>; Mon,  4 Aug 2025 15:02:46 +0200 (CEST)
Received: by mail-wm1-x33d.google.com with SMTP id 5b1f17b1804b1-45867ac308dsf14861995e9.2
        for <lists+open-iscsi@lfdr.de>; Mon, 04 Aug 2025 06:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754312566; cv=pass;
        d=google.com; s=arc-20240605;
        b=WyRDTL3YmvGU7dqci8/ctsAlLsg3O3eIX5rHMHH1Yx70wdMWpyPIkNXdvhYaxKUQQg
         7kNNyT5chMWRKCX425FHD2ScHWy1+BCH5IxYP6MbaZAG9v63UEqPzsCKhZsCYfMegbin
         LpxICAcpFzS76+uxg15FFsDaeMDYKIrwEThP1KMdt6w/KMsz+0yArB+Tnfv1AV9Hnx1o
         2/4j8sb+BPSLDfIjPBl4iN51ZBobxrO8RT5IAlqIEQzKL9UaT0CvYwOTYQAdW18B/aUQ
         U2/NSyvt66pD1tM3c0ZZ63GB5nHcT6Ul3nVv9VSizEUoaNUYbLsIKJOgmJthj4D+Toip
         l4zA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=ODRDPtoNAUk47Ff5U5SBAfDpkXo+l3Wz6M/acvUevGM=;
        fh=rUNaToAz4zcdmx5VgRDVLtC6T0B2Lg1uv7QkL/+ts2M=;
        b=kI5/v2VIrMSxH14c+bO0f5BaC74EfgE5eDJ90KXParfEtszGzPln1kDNuHxDxS02K8
         8Y/VFZzM5appofIpk9j5N43s6sb5jxmNdwR6PB+eDwLGzeRz6G5YmYNJiSSV1SL6z/u7
         Veh7NR/+03Ubs0yaztULmx0WdZnkmpZ5jafo2NcP1XlMJdAAqmJKY6Taa+N71PWOJgWS
         9pKV6Z1pjLLFFAtevsNE5FFh5oaC0HCqGLf9pDbvs8APCVcFu5Rxtx0BJKTIF3kadF/l
         0MkQS12HfajGMmlbRtfMF6RqqARs0heCpZMA4PJ2GcKkwA7oUHv3Kw6zZHZyT5INSpYd
         2ppg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Zp5GVpYY;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1754312566; x=1754917366; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ODRDPtoNAUk47Ff5U5SBAfDpkXo+l3Wz6M/acvUevGM=;
        b=RYErrcLcx5Tq5vqzotpNr+KjN8NanxjWTaT2/pVbURh7+5OJnIoYrlwKXS14q4TT+e
         wz3HvkV/pi8K9Q5RIG2ZijegidQBetxT6Ip9AbR9Styjxmh3FWc014bOb/VEBRQE0qIL
         jcse0a/yPinuLPxtwDHHaHoTA9vPnmU6sre1yRRO+sjIuB2WF90YgigKvH01KqXyRDAk
         mVM86yK2IPN9kg7Adw6ZGofewplZTn3Z/T2j2ICGGoUibHGdZSWaUzaaTkjaRaMlOcRp
         3ky1cZCh5+xxDbEv+6rcpTj1Hc9kzqzLOQieNUeU9gExSJvDLCH6029OV9GGSJKvnOqq
         xsHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1754312566; x=1754917366; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ODRDPtoNAUk47Ff5U5SBAfDpkXo+l3Wz6M/acvUevGM=;
        b=kaxuzcgVQfgNeKEHbx/KDAu7aIOLj/SPsPKFiHnD3s1s8h9In7rouuZRYosyXapyi5
         sbSSflxlkjP75s3hv68JdNA1RyVC9jr80KtwnXZZkqTA4d07RJNVByEpwl+j9kMpZYF2
         sE98AqWu9iMuH2glr6NsqzCVpYAxQjFzPFBvOF/74KT+yYa/Wsu77AyOW/G+yXoQjcyZ
         yXSiYIwShU0TNd6H1glSdMmVxQ51bGzR36NnV/l7WKgTUHIdOs5nZ47fdpQ9ydKS6rLs
         HyB3wY6xMf/h0KwBlsYehzpWiKmQ4fk9Bs9lJlkBBn8w5XHZLAQM/Ubixk+zG1HgwnaJ
         c5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754312566; x=1754917366;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ODRDPtoNAUk47Ff5U5SBAfDpkXo+l3Wz6M/acvUevGM=;
        b=n+AIJzstVjMlOT5vb4EK1vqs+/+368P0dHyqos2IS6WZb2KyxD0aHS6F9/9YsSDb84
         1Z4eLkZlJBc2IRqCfndrluIapYK/Ke0yAex8yyi2E0sLxnIu4vRzV2GH9IwibirONwoh
         zA/nnkd1zFFiZzv4qAxrr3LgXnXVaUWZcsWHXXqeiTvIovHT2bQ5EYlqQzTzIBM9GTok
         roAsuSZ3DBXDanD249etbY4wkh+WAY2FRP1kMtZiL1vM5VYVKpZScJlQrE3sRJm/1LB/
         CjdLDmiPnWpF+rxIvDmWUs/GFEqTgdEXWhRtEtHpJzTP9Z26js8sPFpxpS6vRJ5OaaLG
         XQ9Q==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVfJK0o8kNPhYK7FTz4ge7lYmoOchEq0erS0Jo6Gf4wol9bR9riuUb3FHcrtV99jBjlnIbA8A==@lfdr.de
X-Gm-Message-State: AOJu0YygXo777jsbpXYLA9ZmbDMM4Kp61s0knCz9UDDJ9UEpUfWq61wH
	1yZurZsKYPH/ihxUVyIVeIsZxHZv53BvoasWqNRkDpMRQXhDp7SpJebF
X-Google-Smtp-Source: AGHT+IFaO0M4v7pHPfNaZT0Jp+JraJBsUOmHsNflOBhXUcXKkwnxAzGySHpROWXZozy+JiVF1rULKg==
X-Received: by 2002:a05:600c:a48:b0:456:27a4:50ad with SMTP id 5b1f17b1804b1-458b6b6082fmr68354725e9.33.1754312565575;
        Mon, 04 Aug 2025 06:02:45 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZeuXSoL/t3wpILfVH692cm5etowQZgiIDWnQwccdI6Lcw==
Received: by 2002:a05:600c:1384:b0:456:241d:50c3 with SMTP id
 5b1f17b1804b1-4589ebc361cls26672115e9.1.-pod-prod-08-eu; Mon, 04 Aug 2025
 06:02:37 -0700 (PDT)
X-Received: by 2002:a05:600c:3309:b0:458:bbed:a81a with SMTP id 5b1f17b1804b1-458bbedabb0mr49429735e9.10.1754312556753;
        Mon, 04 Aug 2025 06:02:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754312556; cv=none;
        d=google.com; s=arc-20240605;
        b=cVC3N+THOxjZOZfylm7KsSoE3hnjYXzY5X6jEllet1s2C8yWe18e3+PULcUHFqJFX2
         vXZOl5MYwDiJY0jCvwkAkwxNX54BOHPjNI4XPLsEEj8huaE9su1D1rbmePS+yaiEKPMq
         jxck8gFCJMW9mWwcaG88SMJ2xZiuRbt+9l+K5AOypVOoO1f3MdrvFa56OKSvTnHKV4j1
         CCUbxqT9fWhOXT7C+UoXxR+in7FQMtS8zqpin0n+ezTuzL4bG21x9fxbeHSnDrvBn20x
         gzLHS64OI+ZEKQbNlXBBdi/e1XAeKMroqsHD0npDarjmut+W4Cmfdz3el6z7yTs0qX4m
         RYUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=226jmjOtcmh3NeeW93Nq1XKLlWmBg6qhB+HY/u3Wfng=;
        fh=brrs0Z/5hLqg+ffWd8QB4bJLZSHNZrCCuHP+x43PcwY=;
        b=YP5ocI2rAN6pfvAdhyG328gpG2tYfkmCIeQXjKi5UtijUZ/tIEY3RwVyAqWRbjtJA3
         cIEk7OiSW3VMsVdN6EbakChyJNoZPlmyDe1oWRcq486++YM6JMue+KMLSHJxNSAfhe6M
         Eix+TXPOvE2IU1T5ilchoKHlTCZfWlE0ID5ss+oragfoTR2wt6sMrLm08Pwq07WT4xBp
         LX/E9XZraGjCTErUf71mHwVKzhyB1Ai8sy/9kRcEvlPTq6b+Wpnkx44rnEtX1Rm0YHzO
         rTRrODYMn0Fjtn+Kw1DunW0tzt8XVxmakYgjwEM/xrrJfC+91AE9XWv0owFKA8DoSJ6Q
         Bskw==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=Zp5GVpYY;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id 5b1f17b1804b1-4589ee09341si2953025e9.2.2025.08.04.06.02.36
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 06:02:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-458b8a63233so11843905e9.3
        for <open-iscsi@googlegroups.com>; Mon, 04 Aug 2025 06:02:36 -0700 (PDT)
X-Gm-Gg: ASbGnctuccH2utL5UlazfMMEszRhhaop92QWhAzKgtjJnlXwWs2fQIknYOneTUQsZd/
	r3Irge7g9u2GezOewpQzOv2KQUr6XTq/SzCjyHyd2NpcKf8mCaPEijcVLdPtmgLARF77XhZnPpY
	/GdyO2PqBQwMoDigac/RlOXtaeO4VzkbzjAVDwFKAdWPuepj0i0zUR5RYNRYDC8/N2KnPp4A5lb
	A8Eue0=
X-Received: by 2002:a05:600c:458a:b0:459:d451:3364 with SMTP id
 5b1f17b1804b1-459d451359amr41105105e9.24.1754312555368; Mon, 04 Aug 2025
 06:02:35 -0700 (PDT)
MIME-Version: 1.0
From: KUMAR NITISH <csnitish521@gmail.com>
Date: Mon, 4 Aug 2025 18:32:23 +0530
X-Gm-Features: Ac12FXxeg2LkSqQjvSLJcgO1wG1kgP0qXxTIQnNXwPFFuxWmKvcz6ebyooUR6cQ
Message-ID: <CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw@mail.gmail.com>
Subject: Hashing algorithm used with iSCSI for CHAP authentication
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="000000000000b016f1063b89b80c"
X-Original-Sender: csnitish521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=Zp5GVpYY;       spf=pass
 (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32f
 as permitted sender) smtp.mailfrom=csnitish521@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;       dara=pass header.i=@googlegroups.com
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

--000000000000b016f1063b89b80c
Content-Type: text/plain; charset="UTF-8"

Hi,

This mail is regarding usage of algorithms SHA1, SHA2 and SHA3 with
iSCSI for CHAP authentication.
RFC 1994 mentions support for only the MD5 algorithm, I have copied
the RFC excerpt below.

"The Algorithm field is one octet and indicates the authentication
method to be used.
Up-to-date values are specified in the most recent "Assigned Numbers" [2].
One value is required to be implemented: 5 CHAP with MD5 [3]"

Clearly the RFC does not mention other values that map to SHA1, SHA2 and SHA3.
But I see open-iscsi and scst-iscsi implementations have used values
6, 7, 8 for these algorithms.

open-iscsi : auth.c
        AUTH_CHAP_ALG_MD5 = 5,
        AUTH_CHAP_ALG_SHA1 = 6,
        AUTH_CHAP_ALG_SHA256 = 7,
        AUTH_CHAP_ALG_SHA3_256 = 8,

iscsi-scst : chap.c
#define CHAP_DIGEST_ALG_MD5   5
#define CHAP_DIGEST_ALG_SHA1  6
#define CHAP_DIGEST_ALG_SHA256  7
#define CHAP_DIGEST_ALG_SHA3_256  8

Can someone please share details on how open-iscsi and iscsi-scst
implementations decided to use these numbers?
Is this covered in any specification/RFC, how would targets or other
OSes know the value to be used?
Please share any document references.

Thanks,
Nitish

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw%40mail.gmail.com.

--000000000000b016f1063b89b80c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><pre role=3D"code">Hi,<br><br>This mail is regarding usage=
 of algorithms SHA1, SHA2 and SHA3 with iSCSI for CHAP authentication. <br>=
RFC 1994 mentions support for only the MD5 algorithm, I have copied the RFC=
 excerpt below.<br><br>&quot;The Algorithm field is one octet and indicates=
 the authentication method to be used. <br>Up-to-date values are specified =
in the most recent &quot;Assigned Numbers&quot; [2]. <br>One value is requi=
red to be implemented: 5 CHAP with MD5 [3]&quot;<br><br>Clearly the RFC doe=
s not mention other values that map to SHA1, SHA2 and SHA3. <br>But I see o=
pen-iscsi and scst-iscsi implementations=C2=A0have used values 6, 7, 8 for =
these algorithms.<br><br>open-iscsi : auth.c<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 AUTH_CHAP_ALG_MD5 =3D 5,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP_ALG_SHA1=
 =3D 6,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP_ALG_SHA256 =3D 7,<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 AUTH_CHAP_ALG_SHA3_256 =3D 8,<br><br>iscsi-scst : =
chap.c<br>#define CHAP_DIGEST_ALG_MD5 =C2=A0 5<br>#define CHAP_DIGEST_ALG_S=
HA1 =C2=A06<br>#define CHAP_DIGEST_ALG_SHA256 =C2=A07<br>#define CHAP_DIGES=
T_ALG_SHA3_256 =C2=A08<br><br>Can someone please share details on how open-=
iscsi and iscsi-scst implementations decided to use these numbers? <br>Is t=
his covered in any specification/RFC, how would targets or other OSes know =
the value to be used? <br>Please share any document=C2=A0references.<br><br=
>Thanks,<br>Nitish</pre></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw%40mail.gmail=
.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/ms=
gid/open-iscsi/CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw%40mail.g=
mail.com</a>.<br />

--000000000000b016f1063b89b80c--

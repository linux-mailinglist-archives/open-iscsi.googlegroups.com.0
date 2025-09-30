Return-Path: <open-iscsi+bncBC7KRMXASEIRBUPB53DAMGQEHAYSYII@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D24BAC796
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 12:28:39 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id 4fb4d7f45d1cf-634ab12955bsf7879269a12.1
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Sep 2025 03:28:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1759228119; cv=pass;
        d=google.com; s=arc-20240605;
        b=NeI6riy5Q8Goa9ZO9uYR/0nfhdxWkff3b9CZ1S1ht+YW0wtWpgsj64cRozYfHtYsyc
         cusVjPZm0sQ3/sTe3jwT4ChPoQKvRz+D2TniEH2ef5iBJ+9CZIZyQ4I9qnCOmRItgH1K
         BoWC1t17nlRdvhqIgA5tIzj9KmgM+luD9W1oTR2zGROnEwa7uuyz/YFzYx59JWje1XYm
         dmNXdM1b/EUSALypWYlVKE4N/3WBKEpynbEsQx1a3eg9OZt6adiOgd1qFk85kOmwQz7D
         m9n4D7spmfebBsobtpzRrwgMC5n3Ytf2zZ/XG33+5c8M7qMK8oqz1kjYGptD5Kp9nVyd
         ETBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:to:subject:message-id:date:from
         :mime-version:sender:dkim-signature:dkim-signature;
        bh=sJZ1vXEsjYnYOb0jOBSRFTOheyCP2dz9+5ZXcGyPfcs=;
        fh=2+rdGgQc8fVAu2jbJ7+fBAF0Qj8op9/Ijudccynu5f8=;
        b=fQvrDyDZsKJCEPfw7F0ZaE/HRP7Bp1Idafj242Sg3rUy3sdrLU1lCBHjMUNwwVcshO
         gdL3aSDXpA/X7bKmBa7G2p6AJgU41qvM4kZl3AoeYM+KaLYpxpP449j/vEkQchlQAlaf
         ap5sdvC8/g8zonfvR4MrHk3n432z8/dROYendeqoM/bBiLydlmh+KWmueNu43c79Gx8D
         igC6p7R8+3ZgS2/49OwuWmId6zerVSLQFIfl2NWSlgNpz1c+lHkTlVA10Ygrbyl7K26M
         OAHNagwkvIe5Lj8Bairh7AWKAPvtQLRi6k2Imq3x8gxtQmpF4MaXdt8G4GX1raXTUdlb
         oPJw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=L02eULKm;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1759228119; x=1759832919; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=sJZ1vXEsjYnYOb0jOBSRFTOheyCP2dz9+5ZXcGyPfcs=;
        b=JpT8JgC4mCHJtNAP6T7ry81AIptX5zFESwdHRJDwhMo4+ezoEfukb4TXOIgJFdVAmo
         H/9fmHARUO+g/l21VStNjG5lfxMJAM9vWAlwJHkKKnxGW2WdAyYSd7s8N8+ylOwq0xj6
         u92XmgsLqMNTIY6S4HBjdDf4vp6Un7TSD2qlpAHW4wxGj6sr0F3HAnXSEaRedhMWhxZL
         eacS1xcmBh+nHEmT/OuWryohw+OZ2duYR4sBSsZ+j2VyiudEhyYwXe+FkIGFv2FEF6E0
         ON9zynmEXL2VIhXw0uVuc/jpeOvgquuKlA0T4nBLSDCR3nb+qjXA6GGm/APjoz0lJP+0
         zemA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759228119; x=1759832919; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:to:subject:message-id:date:from:mime-version:from
         :to:cc:subject:date:message-id:reply-to;
        bh=sJZ1vXEsjYnYOb0jOBSRFTOheyCP2dz9+5ZXcGyPfcs=;
        b=WZY+qEcCthuQYtXRmlctwDH1M1twfxopgtCdqlX36ht2U1pBJ2wu5q/wlZU8kqyF5o
         SMFRMyhcl7MoGtTATG3n0PwboPFtHOjXsSy4ml+UzHaxN6tYbGRA4/po+8IYLXrGW8Dp
         BGw/CGKOtQgNUByASE6XvTObhVTCVJRI3KaXuKXcasFWCxG7IJfAaYC2PbLdmaguDH7G
         L4qYeGlirVkuv2FJveYgyLnmcM5W+jmAienNve7qv7aibRhGdv/j4kkUdIx+Ljj2U3hp
         q7pAAF9k4C0EvUSKrB+8U36c+72totRFOZUbih3cwVEDIRnNvOgCmg2IUyvEKAFdjI0+
         evog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759228119; x=1759832919;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:to:subject
         :message-id:date:from:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=sJZ1vXEsjYnYOb0jOBSRFTOheyCP2dz9+5ZXcGyPfcs=;
        b=m2uUp5Irc2/SjrzBSZX5WZB5uITxKRVk0U1xCiT3z2Bb1mHI37IlBnKBWWKbJ/vnpw
         T15eGy/+gojzMxghyrV6My9P1DueuBfO60X9M5Pay4Rys9LcifzYaMXs0nv7FPywVSCT
         IsRgBRfSq28CzwYcyhCP+c9dlFPJ7iP55AAKHqx2aoL47FMKR5DzskeIaxdG1HwS8JPM
         EqCEroDGk1IB/37XBzgoDmMBWDMbIPoAZODVCXI7S/2YGSZC8Q485K79VBdizDNOEUPF
         KnJVdlvighuQiG3T1Cxm0eQSLKXSOTtrv2ygjwf/YHFjDRY55MncKWi1i02Gn2dIMXad
         4uZQ==
Sender: open-iscsi@googlegroups.com
X-Forwarded-Encrypted: i=2; AJvYcCVtpzDlyhftiO7gFn0mKlt8Lx8xV6QZdyYdmuR+FlhZUkCBZJP+uENH1mboDXauAnEChPoNHg==@lfdr.de
X-Gm-Message-State: AOJu0YyH3KElU0LEN+ZftXhCrHVaZiH5FJJJihztHTZQEOaC3KP/7Zut
	cwDX+E/pd6B5wjpwbmCyqM8q1Gcs1Dv7qEePDt10ZL9oN3jOGO9uHci7
X-Google-Smtp-Source: AGHT+IHORQRJU7I2KKtuEpD5ohOkNSqiHluIpSd/kbZRAPvgXjwrSthcE1xCw+bDwjdJAY2yTA2/Hg==
X-Received: by 2002:a05:6402:1659:b0:62f:1e7a:f842 with SMTP id 4fb4d7f45d1cf-6349fa91f2bmr15946048a12.27.1759228118808;
        Tue, 30 Sep 2025 03:28:38 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h="ARHlJd5uJGCuNqevnYNH56TUunP83BpKkI2fNKOcyf6ArXMA3g=="
Received: by 2002:a05:6402:a0d1:b0:62f:29fc:cea0 with SMTP id
 4fb4d7f45d1cf-6349f650df3ls5809085a12.2.-pod-prod-06-eu; Tue, 30 Sep 2025
 03:28:31 -0700 (PDT)
X-Received: by 2002:aa7:cd67:0:b0:633:d0b7:d6c3 with SMTP id 4fb4d7f45d1cf-6349f9cab40mr14266166a12.5.1759228111286;
        Tue, 30 Sep 2025 03:28:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1759228111; cv=none;
        d=google.com; s=arc-20240605;
        b=EL4r/fBEya9n5RIMNjo8uN9hVs50WxBBO9jKAYPt2kT6GO9NdLWdhIKc93JoCAxX5W
         hXNTx8KWIHpBP1qfXDMRy5rQk3fNS9EEXeKf/pp9WV6ijuv0sd99GCIOwESwRy8C5pTT
         FITlGp+GJt5rkA+Wt5U41pnOs5IKj5g/kp8cbpU1WisGdwEj9VqB7vcrUzTKj7EGl6fJ
         NT8GQnYZKdP222oo+xzq2reqgPG0F3Gxwwyq+t7JzKnQdvF3bga5qMtqDecLNNYhYfTc
         o5eBES9w26neMzZqdubs655spAgxTPv866alAqAY00Sib5nDquD8rnQcjIJ0JLPis+DY
         imYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=UWMvma+FWuaXKA8V1zmo/OZtYvMNalLTBR0jdNVZ3JA=;
        fh=brrs0Z/5hLqg+ffWd8QB4bJLZSHNZrCCuHP+x43PcwY=;
        b=k9QXCWcUSwj2j/q+gr68csKL1PQp0gWYbt+BWu5vMK3E//u4x9osgpa5Iv1tinebEU
         w57VkJtiDSWOU01ewnLFO0jSxPrU29daoMn5SFViJK2yMc7d4wMgf6GtpYuqHVl10wGP
         AO6PLs+f+Et5FZW6N5BywaSvkjBR5TEND0VMuEEQc9fljXKM8me/E3ePw9tP5ktqBNDW
         vwrYJ6HEodwIVZ7YT6giC2QKD+fYHakjqr8ONPEja3t3KOTAVmiCrtBWzHLwxdESMBrr
         uDUU2lXLk8+yYG5HMifzFzr8Fa3dQ2vQULt+b/iGfMzs5D3DaK4JQf5HWc/2aYRr6Gy5
         ICJg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=L02eULKm;
       spf=pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=csnitish521@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com;
       dara=pass header.i=@googlegroups.com
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id 4fb4d7f45d1cf-634a362d3afsi238232a12.1.2025.09.30.03.28.31
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 03:28:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-46e29d65728so38892735e9.3
        for <open-iscsi@googlegroups.com>; Tue, 30 Sep 2025 03:28:31 -0700 (PDT)
X-Gm-Gg: ASbGncvnoARGaZWkvRsgB79Yk6zX+OyduKF6CeP8bHBqaB5DUDX5minWH8uDPrcis8T
	pvOuICETzDYnsF4rKtAocHyWbT4eAwBPxXb8zveHi0l+kT5NcnK5zlNgSp38Q3lcAu7U901og5y
	/eQNNB0F1MX7x4N17GLcXe+ktpLo+I4HD2pbE0R0mGrVOIe/592r+7YmN+j3FY35WZ2CxD+x1Gm
	7cGBXO8SEIPhP9fyRSSqC9YXUxLJ40=
X-Received: by 2002:a05:600c:8209:b0:46e:376a:c9db with SMTP id
 5b1f17b1804b1-46e376acfbbmr170475285e9.26.1759228110393; Tue, 30 Sep 2025
 03:28:30 -0700 (PDT)
MIME-Version: 1.0
From: KUMAR NITISH <csnitish521@gmail.com>
Date: Tue, 30 Sep 2025 15:58:18 +0530
X-Gm-Features: AS18NWCcMp3CViIkEoZ46iynvkV6es_yZ8kRH_E-29GSlj_XUF1o5wJBY0qMLRE
Message-ID: <CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA@mail.gmail.com>
Subject: iSCSI connection recovery timeout
To: open-iscsi@googlegroups.com
Content-Type: multipart/alternative; boundary="0000000000009955b2064002364a"
X-Original-Sender: csnitish521@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=L02eULKm;       spf=pass
 (google.com: domain of csnitish521@gmail.com designates 2a00:1450:4864:20::32c
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

--0000000000009955b2064002364a
Content-Type: text/plain; charset="UTF-8"

Hi,

As I understand, below 3 timeouts contribute to the total time taken for
marking an iSCSI connection unavailable for IOs.

noop_out_interval
noop_out_timeout
replacement_timeout

/* timeouts in seconds */
#define DEF_LOGIN_TIMEO         15
#define DEF_LOGOUT_TIMEO        15
#define DEF_NOOP_OUT_INTERVAL   10
#define DEF_NOOP_OUT_TIMEO      15
#define DEF_REPLACEMENT_TIMEO   120

Can someone please explain why default values are higher? Do we really need
to have these higher default values? Are these default values reduced from
earlier open-iscsi versions to newer versions? If not, should these values
get reduced significantly for the fact that newer network devices are
faster?

Will higher values not cause the more time for IOs to failover to other
available paths? What are the options for faster failover?


Thanks,
Nitish

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA%40mail.gmail.com.

--0000000000009955b2064002364a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><br>As I understand, below 3 timeouts contribute to=
 the total time taken for marking an iSCSI connection unavailable=C2=A0for =
IOs.<br><br>noop_out_interval<br>noop_out_timeout<br>replacement_timeout=C2=
=A0<br><br>/* timeouts in seconds */<br>#define DEF_LOGIN_TIMEO =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 15<br>#define DEF_LOGOUT_TIMEO =C2=A0 =C2=A0 =C2=A0 =C2=
=A015<br>#define DEF_NOOP_OUT_INTERVAL =C2=A0 10<br>#define DEF_NOOP_OUT_TI=
MEO =C2=A0 =C2=A0 =C2=A015<br>#define DEF_REPLACEMENT_TIMEO =C2=A0 120<div>=
<br></div><div>Can someone please explain why default values are higher? Do=
 we really=C2=A0need to have these higher default=C2=A0values? Are these de=
fault values reduced from earlier open-iscsi versions to newer versions? If=
 not, should these values get reduced significantly for the fact that newer=
 network devices are faster? <br><br>Will higher values not cause the more =
time for IOs to failover to other available paths? What are the options for=
 faster failover?<br><br><br>Thanks,<br>Nitish<br><br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion visit <a href=3D"https://groups.google.com/d/msgid/=
open-iscsi/CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA%40mail.gmail=
.com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/ms=
gid/open-iscsi/CAGEDioNfg3NadnrVCc8esfcqwwKw9zTFoeH2EukBZpSTCENwxA%40mail.g=
mail.com</a>.<br />

--0000000000009955b2064002364a--

Return-Path: <open-iscsi+bncBAABBH4JUCRAMGQECDQ6KHA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A43A6EE615
	for <lists+open-iscsi@lfdr.de>; Tue, 25 Apr 2023 18:49:38 +0200 (CEST)
Received: by mail-qv1-xf3e.google.com with SMTP id 6a1803df08f44-5ef6b163c80sf36948906d6.2
        for <lists+open-iscsi@lfdr.de>; Tue, 25 Apr 2023 09:49:38 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1682441377; cv=pass;
        d=google.com; s=arc-20160816;
        b=iLo/ndhyYifmbO2gAtu2EAhVc2CfsXPorBX+Yn32s66uGPwyNgAbxIrd8gC/l2ePp/
         0M0QQVrgEgi2wAjgtRYXESEc7GuqxWPobUO/kiCgIdDZMxgpe6PQPFER/EBCH5swkP/F
         8Uy1baQCT6V4gdazdFWy9fTIdcgxfvaGZ21cRjTn0z2c3luSxBh/TUqhxdamBUTq387B
         5iMYA9OfC1CgowlhSfINzVZE28c5YYC9r7WRFIJVItos4Y7KcypQb5jBiLHeJhaHP2kJ
         MFx99sue8GTvF5i7HCX1PAnzFiaYVbQxLRQXd2cV4N/Kv4zSFwXJZ40oH5nTqWqW3S0I
         ikKg==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:msip_labels
         :content-language:accept-language:message-id:date:thread-index
         :thread-topic:subject:from:sender:dkim-signature;
        bh=hplKXrTfSih6pCfZECGNg2/5lCbIVjhD+DUWRJSVs48=;
        b=kB8AiV7/w2b6l+9/q4Hkp2wuNzktbnEPnlkkLFwZMa6AuoqarY8caCQoI7Vku/zFU4
         58sEct60UFgYBqk8Og9HXK+KxkCoqrfEZFILPGaMH9G2hbVrEBVr2dLYtMZgPsbI5Ckv
         +N/XtNUW4NRryB2pTonviwcbN2id2EdcjYNMseOz7OEpYtqHFWIIdKAy/xIzVLp3qDio
         Lelahn32XkCoermIur5f13ZneYX+HMUekGSpUjg6LVrnekaksANoeAoOAU22cUA13kOv
         w5iGnrDerAOQARIk0/KM2TjEM7yuXNmrOru6GDTTy1MxhxgChSihCbCwCPDKloHnmeYP
         t1nw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=CBbTou5e;
       arc=pass (i=1);
       spf=pass (google.com: domain of mrpn24@outlook.com designates 2a01:111:f400:7eab::821 as permitted sender) smtp.mailfrom=mrpn24@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1682441377; x=1685033377;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :msip_labels:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:sender:from:to:cc:subject
         :date:message-id:reply-to;
        bh=hplKXrTfSih6pCfZECGNg2/5lCbIVjhD+DUWRJSVs48=;
        b=N+q7pVxzFHdNGf1QuuGkRLsY+C6t8Gs66SDPnKkVGMzmv6ii5GJv2njYoHKNitB0B9
         YzzZqKav04mXhHWxE5Z5hTsxqWTdnjCeNJS/1JIg9eGSR/HXI6ETnAjU74rr/iS+PQX6
         U/u8/pQbGpucuIdQBqLduNt1U8Qfulp1Gyl+yoXi2qhVxJs+TPui7Bslkfd3mfyIBBfa
         /GNFi3hShFx28lEc1HoraHCDDRZv3ewRhb66td4rxWABEmsZ1Z/O/3zfph9BJCmVXAF/
         b1kLP75oW/9Rh0eyLAtoNF7+NRGwbBdAiwLrkXHveRtrpFzHn+2PhM4l9TDveUaMRNLW
         iO4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682441377; x=1685033377;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :msip_labels:content-language:accept-language:message-id:date
         :thread-index:thread-topic:subject:from:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hplKXrTfSih6pCfZECGNg2/5lCbIVjhD+DUWRJSVs48=;
        b=UExV1oxbLul8DXwZx5dtXZdW53nju4LYe2NAKQuYqlbnlgep90VNOsH07VDCm4YIHc
         WUJ4rGCeKiPfCoKg68XVFBngo2hnPYfzCwsRJbvXN7ejt1FAfjrWQPNW/LAyng9pNhnQ
         /qqbfGXJbEFpGxpRRXkXn5MosP7dqpr/onAhP4GMFqsXSsd4S9giN1gUNzMhlSnJI+mu
         /1mIyrc64Dh9e2jhpgB7L+LQk7iqH+1RXpcdRp6SALTc7OI6Fr3xzN1p7aMuz+YKtWKt
         hmvwLwRFJ2Diw44TNYDD04jJKGztAW5g+POobp8ehhneKOLOWcpg7Z3WHbzTZ/0/rFle
         EySg==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AAQBX9fiY4KbIK4NonRAHTTg0sfsiPCm+r7LEa8X+QcCympn24OI0b9L
	BOZSw3LB3iIguPKUWZVPw3Y=
X-Google-Smtp-Source: AKy350b0pWXPj7aWElOPJVbBQJsUd9MqIX5Obpw2331XAtg2/i3KV2IwX9y/M37X+/akzQMHuXE/8g==
X-Received: by 2002:a05:6214:9b3:b0:5f4:cb43:27a4 with SMTP id du19-20020a05621409b300b005f4cb4327a4mr2939200qvb.8.1682441377113;
        Tue, 25 Apr 2023 09:49:37 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:4108:b0:3e6:2f9b:1d4 with SMTP id
 cc8-20020a05622a410800b003e62f9b01d4ls15461312qtb.3.-pod-prod-gmail; Tue, 25
 Apr 2023 09:49:35 -0700 (PDT)
X-Received: by 2002:ac8:5a84:0:b0:3e3:db7d:da45 with SMTP id c4-20020ac85a84000000b003e3db7dda45mr6790538qtc.2.1682441375551;
        Tue, 25 Apr 2023 09:49:35 -0700 (PDT)
Received: by 2002:a05:620a:2891:b0:74e:5d:1f4e with SMTP id af79cd13be357-74e34acf307ms85a;
        Sun, 23 Apr 2023 13:08:40 -0700 (PDT)
X-Received: by 2002:a05:600c:3783:b0:3f1:6fb4:44cf with SMTP id o3-20020a05600c378300b003f16fb444cfmr6228075wmr.28.1682280519180;
        Sun, 23 Apr 2023 13:08:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1682280519; cv=pass;
        d=google.com; s=arc-20160816;
        b=PRBLPSpoJZrhUCuCfyjbAF/6GJqG/kCMzCRmnEiQnq7CnVCin1jAAvtcRxVlZhmg60
         Lrlu71A8Dn9QHFcflupmYNHQTl43iJxI3buPMpjOkAryGoJKoQRflC5mQq16ou6Aajpr
         usJAz4zUQkdrLy+UK4PRqJT+x8hl4cHyjXoJG401Vk0DlzbLrFu/ovMdZgNlCQZl3yVE
         uKqohBSIb5B5pQT92KjWZxgQ3BqLP3uIyzNkp55evzBCwk3lHhNPK6fGU7A30eCNTkZC
         3hhbCtZGHOCdt/T+A9fzAG68Gvlt3R11NEh3aFqTBYzXFDm8l5PRgEUKNUBl+fUX3zoS
         IWIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:msip_labels:content-language:accept-language
         :message-id:date:thread-index:thread-topic:subject:from
         :dkim-signature;
        bh=KF0JLvRgXtdwQSHjnfrVLG5R3tzSomWNTzRMyJqYvmQ=;
        b=a+p/57VC2sRBodqJFlfVPZIUaydfiQqn884+XgSjLUF5l84OF/a4jNZ1CoLf7i1qyA
         aIP56EjY2Xq+3aghD8t3tJZ3G91lsMDlHVQu70cmpMWk+0qKjtRddtsEwyvRusPGVTCB
         rPLveNn8TNGSD0X7RJz60sp8kFG+x/cM3eY2s7wDvpt/W3Cc89o8UF9LOEaxzCoLs9Rz
         DzimT9pSPiCby0t8DvueGrfYUVEoYkqrc9E2fui5MW4P8yceR/0t5VfX5wu+CDSUXruq
         U112ta+tUUtMa+c8sjUhNXFnOa00pI1ZWHNN8jX4MNSeNuu8MCyGtJALyC+asRDJDmP3
         /olA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@outlook.com header.s=selector1 header.b=CBbTou5e;
       arc=pass (i=1);
       spf=pass (google.com: domain of mrpn24@outlook.com designates 2a01:111:f400:7eab::821 as permitted sender) smtp.mailfrom=mrpn24@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (mail-co1nam11olkn20821.outbound.protection.outlook.com. [2a01:111:f400:7eab::821])
        by gmr-mx.google.com with ESMTPS id c17-20020a05600c0a5100b003f17618a207si781916wmq.0.2023.04.23.13.08.38
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Apr 2023 13:08:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of mrpn24@outlook.com designates 2a01:111:f400:7eab::821 as permitted sender) client-ip=2a01:111:f400:7eab::821;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HC55/M2lgNi2NHrEl5CFBArjVpn2u7rZwKTENQKNz1oYGioIxzXsw1Ui3cmT3x/oHIO0aOxT+mogN5DcgIzPqB9jKhwIDdhNlBgesrXYMhBEWOHNjtXEcIJmOMoMcXhRO9wkSOvU4FH85Rs0lryLN6vU6OtPKpw9QsK66MnQdPIzMM1mUA1VpIb2QDr8/eFxrkgFeFSQ4y+eu0pGN+AlL9DYDbKeGTnPfSCaCihNuG3Q8YtTKybInQMc5Gm5p076VPY4l85gSejULXvzC106itN6fJk8EbfDeP8yvab/YRAJcAyrNmOtiGe59sqlQwE26n+TuFcj6FNMHwwGNXZ9LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KF0JLvRgXtdwQSHjnfrVLG5R3tzSomWNTzRMyJqYvmQ=;
 b=mVCwf1o+ItcJNfIB00sWaAN0c/A/MjDquzvferxBMU0hab5c3md02AnoUV0b+0ZU9W/iUbf6QcaHrLaY3DNCgWq8aErn7wDTtRe/qFrqgS2UZ4wehTIzmT3KwmMF43wZs2IT3ZwUQNUgw7KSgbco6SxbKgRtohPUaAr7b3jFS3AmlnRK7xCRcGbjmiUqi+6MLaoCcaToDgcomViNN52WHLNcZRvjqmku9vb1OTzdV+vHJlM6cB2jJ7eT1l1jt6EqtnCmCLmawxFvMyjoHOH0pwxaO+a+muMpyacU7cfcd0IqkqDmnQkP1OQ7cm5KKu9S+qwG/easT5jIuEERJo/jrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from DM5PR02MB2332.namprd02.prod.outlook.com (2603:10b6:3:59::13) by
 IA1PR02MB8898.namprd02.prod.outlook.com (2603:10b6:208:38a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Sun, 23 Apr
 2023 20:08:32 +0000
Received: from DM5PR02MB2332.namprd02.prod.outlook.com
 ([fe80::1c4f:1702:bf52:5a27]) by DM5PR02MB2332.namprd02.prod.outlook.com
 ([fe80::1c4f:1702:bf52:5a27%11]) with mapi id 15.20.6319.033; Sun, 23 Apr
 2023 20:08:32 +0000
From: Leonard Clifford <mrpn24@outlook.com>
Subject: Good Day
Thread-Topic: Good Day
Thread-Index: AQHZdh9d4T/ZU57XjE+aD61eYRui7g==
Date: Sun, 23 Apr 2023 20:08:32 +0000
Message-ID: <DM5PR02MB233236E07392B7950AB47B13DB669@DM5PR02MB2332.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-tmn: [u6ACMPG+T6VXHpJad4r6/aRdfnK7uBug]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM5PR02MB2332:EE_|IA1PR02MB8898:EE_
x-ms-office365-filtering-correlation-id: 6998c3de-8c1c-473b-132e-08db4436837b
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tSTomRkyXZJurVxQgF08JNw20mF9xG0i6HnhAimg78wCSgR+yESRBv6hEcfw5VSV02zJV9cvJnO4opUmFpFvNH2VoPAoz/1fOV8ecNQn93ib9NE4ILht0gGeHxpdclXEyCZjqDJvsfcCuOnH87ZlOhhtDYXk3Maiu02NAX+Gf10WFXOt730CmfjDtSQh6SNvJ3CBcCAw5TRqqjl9Ls2+YB+AkfHIBEk12q3WGJN9oztdYYassJsJNmFvkAgp3uszhBODxzt2KRFHyyLnWWxuy7lR6f7JQfOg2/F382ymo7VK/7wr+sDchoVQynH0MHFOkWvMxAPSLCWuMsjvTEgiwJdigPqOM62eHsofffkX3UfwY1GHw356RzCuLbdPjxYemm7pIVdJGP3mOWkQozKFoBv1v8eO5W99S2PzeMTld7gEVx+uccmO4fUX2itLkOIculUIaYYwN6CU4epMV3OnD4ZsN+4BhsDC7rV6jeIehM4PTzE3rIaaMBS3akulxKOV5nsDyo7QLnvdBEGfDF1adwIqwr0fBwy/PxmOYPzHteTgbfJZrks0zFQPGPG34XtP
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?4VjOcglJLWq88Q0NFXGSLVS3t2lKA2+WzLaD7H7E6PVNYrgFTTzkDZy2iq?=
 =?iso-8859-1?Q?hm6IWUDauZvPklE15+iY03borc07CVHAHBCnZF/5YgDtjwiZ3PzX8gsLT5?=
 =?iso-8859-1?Q?WdzGx420sMzxH4dwfhqavwC92QF/HiLzjDMRQqgW/nJPpz8DYIf8pnNFSk?=
 =?iso-8859-1?Q?4bU3rqui2Jg5veg7bnXHhWiEvjYhFvddW7edae4kqUTMNn+ifZO9ns9ta/?=
 =?iso-8859-1?Q?Cvex9gCGse1jLBzZYta6VSmxw91+zOfesOcKgMczwa/+H5s3YyqyQZCvHI?=
 =?iso-8859-1?Q?fPcu75ccpI03kgSX1sT4fGB9MJu6zsZQCBTAP4YTRNWSYfHFQUbBE2UApy?=
 =?iso-8859-1?Q?lMKQ/dgTQ8sqFUiRnhp+9q+DSWmJkF4G0DVLi5yMfSICLQUHtqycxRS1qc?=
 =?iso-8859-1?Q?k/1UV2maog/T6pggIB7/l665pzrWopeYR0idjOSPNr1qQSZLPCPSMLfMgb?=
 =?iso-8859-1?Q?GmFlwSHAdWVIhORiRAIdxbwl3K42OL7QJt5g7XqDeCobbUJ4Qdpl3kfFmL?=
 =?iso-8859-1?Q?q5OuwkYLSR7PaQRlXqexHnoDj3GYTA0K3rt9HO00Zr+q2E5pVgpRIeTGLZ?=
 =?iso-8859-1?Q?bMGGZx7E4iEG2g3aPqnm4+yhan0uxYgjYKs3sijDA34kXk82bh6aCqMh90?=
 =?iso-8859-1?Q?/ArfSx/cIzC4dGq6nPQx56lIYbcW1QArkAvPZtzvoiI0EjUaY5z1NJnPe3?=
 =?iso-8859-1?Q?2wMB9cW/EsewwY41HdGeo3Qng410HIY6gpEd7tSmOQQyN6/B7qmIlPE0KY?=
 =?iso-8859-1?Q?pEw/zKX6EwU84OPn7eXmjQUuyHxIHPv4HQUUKNuGyLD7uF40urWDbgChfk?=
 =?iso-8859-1?Q?cNBrMX/Vq91mZ144B31sNeAznwxG1ectKdSuK03I6wwSLgY63iq4MkCamr?=
 =?iso-8859-1?Q?7nIwTMyL/dgi8B4XFrhgNpx/VWRYGX2snMFNYEGfBSLNFjSDVv21TcI/lv?=
 =?iso-8859-1?Q?gRmdsj163Wx0EL+uFKhwoTucXsJKk/yariPJCAUZ5oUYPdxaYJrvxU1n6f?=
 =?iso-8859-1?Q?pammqC0m/soq4vBTfHLew8vp2+EqChdR4YlmTPJYqOxtrWq7lf2ZZynoKT?=
 =?iso-8859-1?Q?yUp2wWAN40ze7H9ScXuOT/6ZsjRlupnDDPlRcTkl273TGoso9s7PoeKksA?=
 =?iso-8859-1?Q?phAeGEuQlNPCIRpmcCMec2Ynl8p+0OC0vlQDlr63JE3Me286NE7DVACWet?=
 =?iso-8859-1?Q?K69z6C5H9jU0iyRFHAcpSn1+WFbuAq2lbZ9648Ocx4g3bBpAYi2BxNRx?=
Content-Type: multipart/alternative;
	boundary="_000_DM5PR02MB233236E07392B7950AB47B13DB669DM5PR02MB2332namp_"
MIME-Version: 1.0
X-OriginatorOrg: outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM5PR02MB2332.namprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 6998c3de-8c1c-473b-132e-08db4436837b
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2023 20:08:32.7619
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR02MB8898
X-Original-Sender: mrpn24@outlook.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@outlook.com header.s=selector1 header.b=CBbTou5e;       arc=pass
 (i=1);       spf=pass (google.com: domain of mrpn24@outlook.com designates
 2a01:111:f400:7eab::821 as permitted sender) smtp.mailfrom=mrpn24@outlook.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=outlook.com
Reply-To: open-iscsi@googlegroups.com
Precedence: list
Mailing-list: list open-iscsi@googlegroups.com; contact open-iscsi+owners@googlegroups.com
List-ID: <open-iscsi.googlegroups.com>
X-Google-Group-Id: 856124926423
List-Post: <https://groups.google.com/group/open-iscsi/post>, <mailto:open-iscsi@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:open-iscsi+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/open-iscsi
List-Subscribe: <https://groups.google.com/group/open-iscsi/subscribe>, <mailto:open-iscsi+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+856124926423+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/open-iscsi/subscribe>

--_000_DM5PR02MB233236E07392B7950AB47B13DB669DM5PR02MB2332namp_
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello!

We have come across your interest on the internet in investment opportuniti=
es.

We are independent broker that links entrepreneurs/fund seekers with Invest=
ors who are ready to invest in good business projects and ideas that will y=
ield a high ROI (Return On Investment).

Our pool of funds is provided by high net worth individuals, trust funds, f=
amily office funds as well as corporate and institutional funds. We act as =
the direct custodian of these funds provided by our clients who request tha=
t we operate with the utmost of privacy and discretion. As a result, we nor=
mally fund individual projects starting from $1M - $50M USD for a period of=
 ten (10) years.

Feel free to reach us if you are interested and we will send you the requir=
ements for our review and approval process.

Regards,

Leonard Clifford
Client Relations

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/DM5PR02MB233236E07392B7950AB47B13DB669%40DM5PR02MB2332.namprd02.=
prod.outlook.com.

--_000_DM5PR02MB233236E07392B7950AB47B13DB669DM5PR02MB2332namp_
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div style=3D"font-family: Calibri, Helvetica, sans-serif; font-size: 12pt;=
 color: rgb(0, 0, 0);" class=3D"elementToProof">
<span class=3D"ContentPasted0" style=3D"margin: 0px; display: inline !impor=
tant; background-color: rgb(255, 255, 255);">Hello!</span>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
We have come across your interest on the internet in investment opportuniti=
es.</div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
We are independent broker that links entrepreneurs/fund seekers with Invest=
ors who are ready to invest in good business projects and ideas that will y=
ield a high ROI (Return On Investment).</div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
Our pool of funds is provided by high net worth individuals, trust funds, f=
amily office funds as well as corporate and institutional funds. We act as =
the direct custodian of these funds provided by our clients who request tha=
t we operate with the utmost of
 privacy and discretion. As a result, we normally fund individual projects =
starting from $1M - $50M USD for a period of ten (10) years.</div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
Feel free to reach us if you are interested and we will send you the requir=
ements for our review and approval process.</div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
Regards,</div>
<div style=3D"margin: 0px; background-color: rgb(255, 255, 255);"><br class=
=3D"ContentPasted0">
</div>
<div class=3D"ContentPasted0" style=3D"margin: 0px; background-color: rgb(2=
55, 255, 255);">
Leonard Clifford</div>
<span class=3D"ContentPasted0" style=3D"margin: 0px; display: inline !impor=
tant; background-color: rgb(255, 255, 255);">Client Relations</span><br>
</div>
</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/DM5PR02MB233236E07392B7950AB47B13DB669%40DM5PR02MB233=
2.namprd02.prod.outlook.com?utm_medium=3Demail&utm_source=3Dfooter">https:/=
/groups.google.com/d/msgid/open-iscsi/DM5PR02MB233236E07392B7950AB47B13DB66=
9%40DM5PR02MB2332.namprd02.prod.outlook.com</a>.<br />

--_000_DM5PR02MB233236E07392B7950AB47B13DB669DM5PR02MB2332namp_--

Return-Path: <open-iscsi+bncBCEJDZGXJAINDS5QSUDBUBCD7SCOC@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id E34C554F146
	for <lists+open-iscsi@lfdr.de>; Fri, 17 Jun 2022 08:57:23 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id bs17-20020a05620a471100b006a734d3910dsf4082664qkb.22
        for <lists+open-iscsi@lfdr.de>; Thu, 16 Jun 2022 23:57:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:message-id:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VJqMa+drcYZbfCjkDP6H4S5VZ/CZyA5gXTFyJoM+ccM=;
        b=e7D3NwheILWMl6Zbdz3w0ZKSS84ZDOQI3bUDYPaqLJF2Vcg3pJlv6rT/ntFIAGk/nf
         hInV7wxlK4adpMcKQBDId+A4ndjM1qKYoKdRJ/1vkNMg3K/klmfYWk1ozPmMFP6+tb8x
         /2RSFxkFEhSHvdBY+soZPxKnjyzKreSf2BZm1IYF6XuN2/GrwLxshQXT+PplYXP1DwXe
         lwCkSCJrRC77sB5fWnc1lyiNMVz4yu+mnJ0J14ddkp89Y+mRh9Utv5Sx2rn9n8CcBVAY
         AT3HPE7MgXMUEK1l45giQGXDgKukuxp7VtlHLHT2ijWxZq6MY8CCIg0MrJP5aSupgK9O
         0W2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=date:from:to:message-id:subject:mime-version:x-original-sender
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VJqMa+drcYZbfCjkDP6H4S5VZ/CZyA5gXTFyJoM+ccM=;
        b=nDvOQFKOhYH71kUwSXS20LKZadFOEYv4CFJ7mpDEWYCDKH3AsQfMnZ/2ASmeZW/uAt
         cI3SVmY4mrmKK5bvsmFkzrF7J0bvYYRHxItdmxtAFZ9+xDMu+eFewKqueJrSvDvGsGg6
         aYwGqtc2N1vgh10p0PXEN5ZNOzjRNLEzrYyfXec2YO35joH+qiBDxH3h7HTWFyFJsUqv
         NH8yjx1QG1OaNR4QDGmOKGdxIzebGsKDicNAmrdIVuWVBnnXJ87H4IUOfHWX/iUSbPqp
         Ti6x4fJlXSR96lh932XuLUg8ssntwZEBmRKGFS99e4mCnQ1PMFiXKfKiCTTgC3pDC1rL
         E+5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:message-id:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VJqMa+drcYZbfCjkDP6H4S5VZ/CZyA5gXTFyJoM+ccM=;
        b=1OucIII0bNcUBWvZCbXeGEeHcs3XvNx6lpWRwrFgHZBUx5Zbuw/QddAffaqNyWBcR4
         xMXzLlETIRAqX/aw8fLShFdxp1DJkUw3iVtjPYNZ4sYjCeEGQVskH5aZuZAwUmRCgiKS
         c4+tJnhx2DtRFCXFHqsfusbNgXr0BAlk6njed/tIAT8ot6HALR+aV8TxdFYqdpQUYJaI
         73ug7GSM72EsEoszgnJ8LCGBQLiunIrrnb++AWoFm8L/16DhE8ZILhCtERCJlM8zafhz
         SSJcsmT7Iad0kNzpzu0a9LzZkHjn/bYyVb111mGYXSiyLly3nwn4h+wKX52xpv84C5QQ
         N4dA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AJIora+VVM0D1ZhZNhf52IooeuJwloidX87ZDimLGCmPKF5q3Ci+4Fcb
	FQm+8dxDSeBCNTbaVT+0JcQ=
X-Google-Smtp-Source: AGRyM1sm+ZtCEB+saAL1hBsKNDFDGs516LYEX/DAuX9VUjowFmuOhIWbDFQCrrEAJSot7eNWWkhoYA==
X-Received: by 2002:a05:620a:27c2:b0:6a7:1db:a6e2 with SMTP id i2-20020a05620a27c200b006a701dba6e2mr6312810qkp.150.1655449042647;
        Thu, 16 Jun 2022 23:57:22 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:622a:1a19:b0:305:189:130b with SMTP id
 f25-20020a05622a1a1900b003050189130bls2601829qtb.7.gmail; Thu, 16 Jun 2022
 23:57:21 -0700 (PDT)
X-Received: by 2002:ac8:5b84:0:b0:305:18cc:1635 with SMTP id a4-20020ac85b84000000b0030518cc1635mr7198918qta.289.1655449041148;
        Thu, 16 Jun 2022 23:57:21 -0700 (PDT)
Date: Thu, 16 Jun 2022 23:57:20 -0700 (PDT)
From: can zhu <zhucan.k8s@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <35714a79-ebfe-4c78-966e-bc20add1aea0n@googlegroups.com>
Subject: iscsi device with multipath
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1068_524240988.1655449040674"
X-Original-Sender: zhucan.k8s@gmail.com
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

------=_Part_1068_524240988.1655449040674
Content-Type: multipart/alternative; 
	boundary="----=_Part_1069_94143344.1655449040674"

------=_Part_1069_94143344.1655449040674
Content-Type: text/plain; charset="UTF-8"

How can we repoduce the error with "Multiply-cliamed blocks"?

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/35714a79-ebfe-4c78-966e-bc20add1aea0n%40googlegroups.com.

------=_Part_1069_94143344.1655449040674
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

How can we repoduce the error with "Multiply-cliamed blocks"?

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/35714a79-ebfe-4c78-966e-bc20add1aea0n%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/35714a79-ebfe-4c78-966e-bc20add1aea0n%40googlegroups.com</a>.=
<br />

------=_Part_1069_94143344.1655449040674--

------=_Part_1068_524240988.1655449040674--

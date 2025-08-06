Return-Path: <open-iscsi+bncBCYMVIPVXQMBBOULZ3CAMGQE6HXMVPQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oa1-x3e.google.com (mail-oa1-x3e.google.com [IPv6:2001:4860:4864:20::3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 57107B1C9E2
	for <lists+open-iscsi@lfdr.de>; Wed,  6 Aug 2025 18:41:34 +0200 (CEST)
Received: by mail-oa1-x3e.google.com with SMTP id 586e51a60fabf-30bcb15eff5sf107971fac.1
        for <lists+open-iscsi@lfdr.de>; Wed, 06 Aug 2025 09:41:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1754498493; cv=pass;
        d=google.com; s=arc-20240605;
        b=gmV4X6Us/vrBnyaCxTEy+flDhpKMObQFpHZPfHZmHuZEBmI58jkZLUEF7vqCyZ4PBZ
         3Lu02DgYyA688Tvat6aPomqb+CRwnCeqKJLR2s0bqG/qBFjWpsaXASJwAczbb1QfpzJm
         jJ+6ayC4CD7QRJFprNdivg11QRIsycZhzjmZXbn331bxn49nxaJmX9t42cW64X7+fwUR
         iayK4j/MSanxBDg4/geF0b57Ebgx/kRczX5NztWZlvl9I5rIQDmEsAqmC5zM+SCMPdDb
         KvWve/FsLzvQFyL3NSXYzg7m63PqbXvQ+T8jqAAyQgg+J9i/1M0cnmX5xB8z5RWf5b07
         L3bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:content-transfer-encoding:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=oIgpQTH0YEpgbkAhITiy87qd+BJ2nnnHYAfTEz0fUyM=;
        fh=aUmigIl09GAmMnJtSbtu+6rHFj/ARH930ooN1UhHuJU=;
        b=Mko8gKFba3xtlpsRcZyNbF1YXALwsUut49oKWOLsGI+ko2emuMbHzwpmaeA//rpD9J
         rEVy4AQiYdQ2G/yfPLw/F5XupkneZeNi7pSaCrotO64MJwKN7xYdHcw/qmE6deOrB4Cx
         i874ni0jCVIPIk/cx6dfzyew0W2CiS1MQF5GMGYntLRCVkn0YJbDke0qoePtOSlWY4CD
         MygVBpLg7CiE7FrzINrwPudn5t9XeP6y05tNtsTft2jGXovF1y5nP0Qm1MdOhqsDMy/x
         QcQnKdXsxzExf9BJYQ6sr7L0cGu8cIPgjM3u4AqG9sOZkU+9x2lbg6rAaL9asyemR5H3
         NlAA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RH6m9tON;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1754498493; x=1755103293; darn=lfdr.de;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=oIgpQTH0YEpgbkAhITiy87qd+BJ2nnnHYAfTEz0fUyM=;
        b=l/XZsZbn1Y3lJ61zRsoDDHEXdCSAzeR/k3jRe8+sdA9xNgb3pKpyNKa8GY+aYeKAWO
         7drlofsPC6pDqm5aOL9erpb9jHpaaJHbYNYmLSjG1yy+IyDtd0TSwXj6KopXgR9dTrU7
         wiep2WOBpjm48rezwpk4KTIaI0BP/KmCsbgogXnruv0sZfA568njuF/L0/AWQ2IJp2te
         YNyGro559fVx+T56mRUb8IxUSR5sVYESu1ncH7L3jOChI+C53645J+yS1HI7O/BoKiNr
         AmVThZ4zGC95fw/gzsEdCSVqO+9fnYvvJ8Umo61hB38nz1rtWKWo1VXjUfIKGtrNA0s4
         aQHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754498493; x=1755103293;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oIgpQTH0YEpgbkAhITiy87qd+BJ2nnnHYAfTEz0fUyM=;
        b=MtchYyMKhYDUigMQPlZUCdObEV52iMnT7OEnttWHkngbZvEo6Fyr2E9cU3XJQUlzFA
         wvm/jHsZNL7ohCPavdnXF23tgCoi0d6XkdJ2V82BhMsvKXSkSP6atSh0vAMqZwo4WtJO
         pz8U4lmWJnX1Te35BMBY3wk65rlqutWcOwy4YWXDvO8nmrFzDSN9mmoSQ0cHyqTnYa+s
         KezwtbOrMuaOZF1Yqpp7aREVBHd9g0QgL8GZY/cTH4LSqsLFeGMjy/2BfL8tYR70/VyK
         8dnjoaPJRQmNKwLoGFkV8RPI4hBhq4yuKIBmcAYcN8ecM2oKg4VyP20NqBCHxOhd9uuw
         4Kvw==
X-Forwarded-Encrypted: i=2; AJvYcCWtOR4koXOKFxpTvw1af92idvdtkiwDN+mLcDs/GHFg8Y298IJMs8w3DdtTNNzhx6uL5gsi+A==@lfdr.de
X-Gm-Message-State: AOJu0YwgT8VEyhiUd3+up4vh/FMqj1KSUT785bic5Ga5idjWHdm/qJll
	EicqQZrLQy05UtHQRtcuND0dFphCWsDs4em5zFTPE16d93KfLGgXQuoc
X-Google-Smtp-Source: AGHT+IG0fJFtedkQmxGZuHF/6KJdFrwiCA/Y1sAOXb/22Y5JTiBqf66lrZBgl/8iw89HwXoI064VXg==
X-Received: by 2002:a05:6870:b625:b0:2ff:a6b4:2bd2 with SMTP id 586e51a60fabf-30be2568cecmr1988931fac.0.1754498492758;
        Wed, 06 Aug 2025 09:41:32 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com; h=AZMbMZeyDuTqzlGZWtWdzVQZ+AKcLOwGJmhuPpBU91JwWThS9w==
Received: by 2002:a05:6871:4314:b0:2eb:b30a:f5e0 with SMTP id
 586e51a60fabf-30bfe700e77ls59232fac.1.-pod-prod-03-us; Wed, 06 Aug 2025
 09:41:29 -0700 (PDT)
X-Received: by 2002:a05:6870:e06d:b0:2ef:3e4f:de9d with SMTP id 586e51a60fabf-30be2a116a4mr2195918fac.17.1754498489141;
        Wed, 06 Aug 2025 09:41:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1754498489; cv=none;
        d=google.com; s=arc-20240605;
        b=c8Vz0BuYXnqjHTLTyp5A3GUuQTwOM7u/qpyr8CmuuIXcDuElZOUNG0boQXycqNr+2l
         Q/MHsKKZpxxozB0wMDW3XnJyEwGRQngyhOhrWkSczNQFdGF9I3cdN7Je4QD9LWaq8fKZ
         as+HqkdfwRADQHvkQhn37we7eEGGjwnrjbfaZLHGWyJ8JYJxhbjxXcedaoDEZ2qXB9wn
         hmlpXHxwsVbpqMod2up2TwmchvUg8zVkbyosJnFcXA6KuaMsJ/K7JhYfy+/p0xIzNjjK
         aZUZ8HB3zg4C6Js1itFwLZ7xsvLLOqQfCTUHD8o1qyCWTOYSQFlQ8FLhMJCgKmKWiiUg
         m9Yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=9bSkM+qu3rWqfxG//L2hkZrmss5YbocAjzEL2ky+EFg=;
        fh=6npq0xct8jmYr+ASli3/upun8HhxomBG/G8m58gdKmQ=;
        b=dpdoq4EHQTAN20DwAUg1qQvBLuv8msg66NXWsFcGAJJQEbImI6WQk/aCW/SS4lfZgT
         ggykMuhqVTHAiM+PnHSUCcE7lYEdaLaYAu4XySaDGdwfWSMXVNqrT93W8yB7T6KamuCW
         aLneuXWGMxpU+icvz0Y1mDF2gJQK1qWjN55V9DLneB3j7MCzZ4PwiRImxou1Z0l/HNVv
         YZdE+kpP790nFaLvv3LroWAz8PX/8n5osbXWfUslqUsmhSTm7tn19NABrp4SVx5Gk6Dz
         rhAEU/+pNlKdq7mVRw9EKyzmd+DDJoiS3TLGe0Pwgv6AsUAnoyriFAUbeZnVHLwOrUPI
         KfYg==;
        dara=google.com
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=RH6m9tON;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id 586e51a60fabf-307a67f3040si750254fac.0.2025.08.06.09.41.28
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Aug 2025 09:41:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-lj1-f198.google.com (mail-lj1-f198.google.com
 [209.85.208.198]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-682-ACwhhqziNGmIEhIClBRq_w-1; Wed, 06 Aug 2025 12:41:27 -0400
X-MC-Unique: ACwhhqziNGmIEhIClBRq_w-1
X-Mimecast-MFC-AGG-ID: ACwhhqziNGmIEhIClBRq_w_1754498486
Received: by mail-lj1-f198.google.com with SMTP id 38308e7fff4ca-3323682d9bbso275501fa.0
        for <open-iscsi@googlegroups.com>; Wed, 06 Aug 2025 09:41:27 -0700 (PDT)
X-Gm-Gg: ASbGnctulXyw8nfgLQrZo4mX/QhfCNapLvY3jMpJ7PyqCUmgx6O8+lmRfDiaaLbyL99
	1CalJ+I+0vA8aphafCTTdlJr8WLfQUVMW0sr83M53YO2kTLl90Fp2iaTiXk4250RWeBRL3cNn+O
	WwarNhXOR9WojP7x9DjI8=
X-Received: by 2002:a05:651c:211d:b0:32b:720d:56f8 with SMTP id 38308e7fff4ca-3338146ab9fmr9223411fa.40.1754498485388;
        Wed, 06 Aug 2025 09:41:25 -0700 (PDT)
X-Received: by 2002:a05:651c:211d:b0:32b:720d:56f8 with SMTP id
 38308e7fff4ca-3338146ab9fmr9223331fa.40.1754498484941; Wed, 06 Aug 2025
 09:41:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw@mail.gmail.com>
In-Reply-To: <CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw@mail.gmail.com>
From: "'Chris Leech' via open-iscsi" <open-iscsi@googlegroups.com>
Date: Wed, 6 Aug 2025 09:41:09 -0700
X-Gm-Features: Ac12FXzzZZKJ5ek2EpNqnYLwPahcS-9gHTAI0al8jMgnwf8nuQeYRghykn0H9Ts
Message-ID: <CAPnfmXKH+7c1=1az+roCwp1Kw3rRWO9TC-9rGLVP-8C6gMpbTA@mail.gmail.com>
Subject: Re: Hashing algorithm used with iSCSI for CHAP authentication
To: open-iscsi@googlegroups.com, KUMAR NITISH <csnitish521@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UKTFpvmzgu40SZxYBuEYrLoIoiU0EjTT2dOLcqH4j0c_1754498486
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=RH6m9tON;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=redhat.com
X-Original-From: Chris Leech <cleech@redhat.com>
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

Hello Nitish,

As you mentioned, RFC 7143 (iSCSI) references RFC 1994 (PPP CHAP) and
both require that algorithm 5 (MD5) be implemented.  But, RFC 1994
also states that up-to-date values are specified as assigned numbers
(calling out RFC 1700).  RFC 1700 was obsoleted by RFC 3232, which
established a separate IANA database for assigned numbers.

If you look up the PPP Authentication Algorithms in the IANA database,
you can see the assignments for SHA-1, SHA-256 and SHA3-256.
https://www.iana.org/assignments/ppp-numbers/ppp-numbers.xhtml#ppp-numbers-=
9

Maurizio Lombardi and myself from Red Hat worked with David Black to
get these assigned numbers from IANA, and then implemented the
Open-iSCSI and Linux kernel target support.  The need at the time was
to provide an option for FIPS compliant algorithms in environments
where MD5 is not allowed to be used.

I hope this helps!

- Chris Leech

On Mon, Aug 4, 2025 at 6:02=E2=80=AFAM KUMAR NITISH <csnitish521@gmail.com>=
 wrote:
>
> Hi,
>
> This mail is regarding usage of algorithms SHA1, SHA2 and SHA3 with iSCSI=
 for CHAP authentication.
> RFC 1994 mentions support for only the MD5 algorithm, I have copied the R=
FC excerpt below.
>
> "The Algorithm field is one octet and indicates the authentication method=
 to be used.
> Up-to-date values are specified in the most recent "Assigned Numbers" [2]=
.
> One value is required to be implemented: 5 CHAP with MD5 [3]"
>
> Clearly the RFC does not mention other values that map to SHA1, SHA2 and =
SHA3.
> But I see open-iscsi and scst-iscsi implementations have used values 6, 7=
, 8 for these algorithms.
>
> open-iscsi : auth.c
>         AUTH_CHAP_ALG_MD5 =3D 5,
>         AUTH_CHAP_ALG_SHA1 =3D 6,
>         AUTH_CHAP_ALG_SHA256 =3D 7,
>         AUTH_CHAP_ALG_SHA3_256 =3D 8,
>
> iscsi-scst : chap.c
> #define CHAP_DIGEST_ALG_MD5   5
> #define CHAP_DIGEST_ALG_SHA1  6
> #define CHAP_DIGEST_ALG_SHA256  7
> #define CHAP_DIGEST_ALG_SHA3_256  8
>
> Can someone please share details on how open-iscsi and iscsi-scst impleme=
ntations decided to use these numbers?
> Is this covered in any specification/RFC, how would targets or other OSes=
 know the value to be used?
> Please share any document references.
>
> Thanks,
> Nitish
>
> --
> You received this message because you are subscribed to the Google Groups=
 "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion visit https://groups.google.com/d/msgid/open-iscs=
i/CAGEDioPc0UQMtrXr4fLQbedDT4cja5WPcLV-cU6Nn-C34TNHsw%40mail.gmail.com.

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion visit https://groups.google.com/d/msgid/open-iscsi/=
CAPnfmXKH%2B7c1%3D1az%2BroCwp1Kw3rRWO9TC-9rGLVP-8C6gMpbTA%40mail.gmail.com.

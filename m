Return-Path: <open-iscsi+bncBC22XCF67ADRBJOJ5PYQKGQEP7JDVYY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id B55861534A0
	for <lists+open-iscsi@lfdr.de>; Wed,  5 Feb 2020 16:52:07 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id ds13sf1514943pjb.6
        for <lists+open-iscsi@lfdr.de>; Wed, 05 Feb 2020 07:52:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580917926; cv=pass;
        d=google.com; s=arc-20160816;
        b=UtnYEiW+7vk+3sJH/FwyI+MJDiw19rjxta3N2QN2XBlWIpsMCC06NhqVsHRiUjJl/V
         vtuqetiSR6RXJUp2me1YphJWuvMILN2YLWm2U73BOrbv/OCtJO52WTCamx03zSXF8AXE
         t5rlBOpVsTr6wNb2mJ1qluccUIdOXuBZBxwP8qz4HHl0g3luWU8u1HbS/K2urybBsTAI
         ITtitymfq8DjU6FsUASiF8qpSr0VSpCeLSkBM1qlt63BdLLJuS1s7Q3oGuBZyPeNAJgZ
         3osI5SMm7ej0+7swzQbXE6PJQMQplG727aY9KScwpMEo4cznGoW3dNb2rMIAopLsa2JH
         bDIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :content-transfer-encoding:user-agent:in-reply-to:mime-version
         :references:message-id:subject:to:from:date:sender:dkim-signature;
        bh=MhVEWVB0PXvs6DOW6ZrqCBOn5XYvyr5enMRIM9fb6jE=;
        b=XWiMEJBi0m0yRDgHn7hNkOn/fpc3QuuZxhN1pnTJFb8BMpRsuJ5lmG0CGRJhMTSt/0
         knYa/9WvAf4J1bYO8QdRilD/6Frzd+mtDKk0Q8H0S2snTDiZ+twVZu/FiVXdSnNSl6bG
         2vyN7hXJmRqY3wPWeth9pvwqhURXFv/PYtHfLQtXGoEg8J2uQzQ0ScufsBp4IStNaXq7
         N5eQaGJ0Xk3M803fCBryYcDnR0liZ00JuxVZ4SZg0BWVt2TpWA2blij2SGREnnHIzM2y
         crbIJ6UM7hhFwVbZROtXKE66av0jaPQ4GeUWdOGdcQbTKKLVZDfLWSonFbQID22NZvD5
         u8ZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EJVNYspv;
       spf=pass (google.com: domain of geguileo@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :in-reply-to:user-agent:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=MhVEWVB0PXvs6DOW6ZrqCBOn5XYvyr5enMRIM9fb6jE=;
        b=Sbg0MINrVX+7ZmaeOgJZflYyRhr8SFdxa/T4f6G9BmulH2JR479zHo5IfCpGJR+kKt
         6DHefUZT35JsLtoc2kIZA61+p1s5ljwdQkyRXhllM04ghoyvAT5T1agZUQyERzsKhcr6
         Nncve7AljmumrFK/FVFJPGOO75CA+LO3frR9auzLbCu6i35CxTWyDyxrEoSq22p28cOQ
         AV+jmSO4P8v0wxH5PTDioqV0FHvvOIW4/qK5iABFemSiZstqpdx82atD+lNMObxe7mNG
         sg0U3kFX1RwFAdjCXOzwdyv5qT8DKFUl9PlxwOCr/v7GHv3cfPgZno7tZPvjA1Y9qAQh
         PCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:subject:message-id
         :references:mime-version:in-reply-to:user-agent
         :content-transfer-encoding:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MhVEWVB0PXvs6DOW6ZrqCBOn5XYvyr5enMRIM9fb6jE=;
        b=hFlyh/yS4oqBhI0WkIAodIqb+b4kJV27ws8dorvgXag5D9eAeE6G6aB/3cHz22QOLr
         AzG7aN63ubvEgyJTDFbn48Kdw46Dzr9/9VHdKpHVUUzTKCR57Io/jmIFK3ZdMQW1CRP+
         CD3EFmTYkAKm/CRapWkAoz4erVEaZPTgQn0WY4alm0YyZ0U1+sHzk1LFzXLVeEdOmUjY
         +Y4vusYclgZqqbPY2CB4uRGFcEHhoRs3yCEzijyeBIaM+RAG1m06j8UaWGX65go7s+ic
         MDu5kAZKWTx0TDfXQM3EIa/XK9IsgmP5rsIx77C51kBgC9rvqjvf0bhs38tAXU97/yG0
         oOCw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAWwOkuDKaTyaSJ+tQrekuI9SWPlg9p5I4v+9TZrVGsAQ6vU+T8l
	JJo5urO58uXUFXJrsEdBeV8=
X-Google-Smtp-Source: APXvYqzl4HabzMq4+VeLvJTpMFHdZd5AO147FwCW1z1uHkXzAYKfOctRtxRD3uoInTk2Ayco3TSw2Q==
X-Received: by 2002:a17:902:9a09:: with SMTP id v9mr34696293plp.341.1580917926229;
        Wed, 05 Feb 2020 07:52:06 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:90a:1bc6:: with SMTP id r6ls1405197pjr.1.canary-gmail;
 Wed, 05 Feb 2020 07:52:05 -0800 (PST)
X-Received: by 2002:a17:902:8a85:: with SMTP id p5mr36949592plo.154.1580917925223;
        Wed, 05 Feb 2020 07:52:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580917925; cv=none;
        d=google.com; s=arc-20160816;
        b=rjOAgX3uRZdf+NVXJ6TwCC9EfOOZnB2Rx6f33e7YOltFKlN0z7pfeYkVnKID5fED/t
         wLtC+jlJIfCgjsN2ZET+6uOLUpWI4wxy/o5iThmRqz+MmEjl/WT1MyMEtdQnEmWr8SeW
         tA8L0fWyet4O9iWk6orbWTzNFd+WQqnRgj8QtYZnH/HxW2npnClkuJQKjluZLBj2vYIV
         2XTIy9+TyeMNj48jGw93UGvE0SHJq6WE7oCU7+Xe1VFatfN14CSmrYjQfyyK6vGuNcrt
         qor1gxY7ef/AJtK2G2VrhZZgtx1uvMUe6UZqQWmGGzxiISUjHTCnJyaD/KliBJOakRNw
         WEEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:user-agent
         :in-reply-to:mime-version:references:message-id:subject:to:from:date
         :dkim-signature;
        bh=QxzEcA54K8tKUdyrCR+2VsDeMgvSkGE+3dhfL3qQZsc=;
        b=UtHHbLFrh/8TcoTuuD+lptP8Tb6W3AC2OiltkhlSXaU0qJ5QeKlKW1ERC0UFl0lrTH
         CH1gPNX3Szfv3jr04lzUjHUU/GiG15vkaFl8NuAm0MWrAbjt8Ts/m4zrKjvLSTkW8Lp/
         K1/fOXXmMxkJbXCJCqyaqT02t5143JzNKeW5zW8C3ClTh02PP5qXl9AYchMT4RHnE3zH
         ppDHBMSJFNZskR0hsUyKfqxNwYS6RG8CLd2O7WE2ty28k3fby4jFhjI9G5Rr5KC/vt5H
         j0J8GMcQe13sMAH5QBqYVtb03f+q0OpYalM8+e1sgRS8IYhUlOC4CsOBdASut6OiIj7b
         tswQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EJVNYspv;
       spf=pass (google.com: domain of geguileo@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id h18si5311pju.1.2020.02.05.07.52.04
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Feb 2020 07:52:05 -0800 (PST)
Received-SPF: pass (google.com: domain of geguileo@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com
 [209.85.210.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-164-jsVGS4m_M0GM3x47_l9O1w-1; Wed, 05 Feb 2020 10:51:48 -0500
Received: by mail-pf1-f197.google.com with SMTP id q5so1803430pfh.1
        for <open-iscsi@googlegroups.com>; Wed, 05 Feb 2020 07:51:47 -0800 (PST)
X-Received: by 2002:a62:ddd0:: with SMTP id w199mr36462642pff.1.1580917906613;
        Wed, 05 Feb 2020 07:51:46 -0800 (PST)
X-Received: by 2002:a62:ddd0:: with SMTP id w199mr36462624pff.1.1580917906334;
        Wed, 05 Feb 2020 07:51:46 -0800 (PST)
Received: from localhost (static-250-25-231-77.ipcom.comunitel.net. [77.231.25.250])
        by smtp.gmail.com with ESMTPSA id y3sm29301604pff.52.2020.02.05.07.51.43
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 05 Feb 2020 07:51:45 -0800 (PST)
Date: Wed, 5 Feb 2020 16:51:37 +0100
From: Gorka Eguileor <geguileo@redhat.com>
To: open-iscsi@googlegroups.com
Subject: Re: iSCSI and Ceph RBD
Message-ID: <20200205155137.fp34xo4xmpbuxu75@localhost>
References: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
MIME-Version: 1.0
In-Reply-To: <dc5e17db-5e78-49ff-be38-a17706428655@googlegroups.com>
User-Agent: NeoMutt/20180716
X-MC-Unique: jsVGS4m_M0GM3x47_l9O1w-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: geguileo@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EJVNYspv;
       spf=pass (google.com: domain of geguileo@redhat.com designates
 205.139.110.61 as permitted sender) smtp.mailfrom=geguileo@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 24/01, Bobby wrote:
> Hi,
>
> I have some questions regarding iSCSI and Ceph RBD. If I have understood
> correctly, the RBD backstore module
> on target side can translate SCSI IO into Ceph OSD requests. The iSCSI
> target driver with rbd.ko can expose Ceph cluster
> on iSCSI protocol. If correct, then that all is happening on target side.
>
> My confusion is what is  happening on client side?
>
> Meaning, does linux mainline kernel code called "rbd" has any role with
> Open-iSCSI initiator on client side? To put it more simple,
> is there any common ground for both protocols (iSCSI and rbd) in the linu=
x
> kernel  of the client side?
>
> Thanks :-)
>
> --
> You received this message because you are subscribed to the Google Groups=
 "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/open-iscsi/dc5e17db-5e78-49ff-be38-a17706428655%40googlegroups.com.

Hi,

Are you referring to the Ceph iSCSI gateway?

If you are, then the best explanation is on their docs [1]:

  Each iSCSI gateway runs the Linux IO target kernel subsystem (LIO) to
  provide the iSCSI protocol support. LIO utilizes a userspace
  passthrough (TCMU) to interact with Ceph=E2=80=99s librbd library and exp=
ose
  RBD images to iSCSI clients. With Ceph=E2=80=99s iSCSI gateway you can
  effectively run a fully integrated block-storage infrastructure with
  all the features and benefits of a conventional Storage Area Network
  (SAN).

So basically LIO takes care of the iSCSI part and librbd takes care of
talking to the OSDs.

On the initiator side, there is no knowledge about the storage actually
being on a Ceph cluster, since it is connecting to a normal iSCSI
target.

Hope this is what you were looking for.

Cheers,
Gorka.

[1]: https://docs.ceph.com/docs/master/rbd/iscsi-overview/

--=20
You received this message because you are subscribed to the Google Groups "=
open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
open-iscsi/20200205155137.fp34xo4xmpbuxu75%40localhost.

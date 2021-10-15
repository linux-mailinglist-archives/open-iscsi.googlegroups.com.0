Return-Path: <open-iscsi+bncBCYMVIPVXQMBBYPIU2FQMGQEHYDUGFA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x73a.google.com (mail-qk1-x73a.google.com [IPv6:2607:f8b0:4864:20::73a])
	by mail.lfdr.de (Postfix) with ESMTPS id D794542F98D
	for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 19:03:30 +0200 (CEST)
Received: by mail-qk1-x73a.google.com with SMTP id j17-20020a05620a0a5100b0045f8ed4f72fsf7262510qka.1
        for <lists+open-iscsi@lfdr.de>; Fri, 15 Oct 2021 10:03:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1634317410; cv=pass;
        d=google.com; s=arc-20160816;
        b=JGMELWUjzA9uglPA6HS6EFWU+Q/G0XlGSPZP05Xj75D/t95ZftZUlflSX0g18D5tL3
         Bt1v8rrVyUEHVV1OX0QmBBNk016Tkm6Palw88LXPH8wAMoWVZqJlHwQvM8YyyW4Y0W+R
         CNlweQfmBreTTbPtu+JwqtE3PH2XCEamDMVVhhaXpR4Hl6vnkrm3qDsnZJvo3U2AGhc3
         2LVbQ/oxTVUYk8LIoKkSLwh1qEArhtJsmA5uHCZJbnCOwDvWWt0D3cy4Gvc7WF21NfXp
         0XzbiBqEF/AEcOKJjbSH1EvhCX8cXI6jUBS6yD4ezLrp+G/dXB9Ys9H1RZowbY0ueEIm
         a/8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:sender:dkim-signature;
        bh=nEV68H2GGz/AGDO8LmBSa2xkSiBZ0yC2qu4ni9lBh+Q=;
        b=xsyu0uxNjO4MohSgmrsvsBY//+N+Tfssx6j1ZF0m+U3yBUnWTKQfVhsZvN2x6rWrMH
         UaFqvMPIZrgDKLzY7jABxccMwejw3lbGq+FppKsjQo6bbrMOK9GmS0psCagDsB4ob+mh
         /79l9KE/4t7RAMs84CjcnGAiVi2/bLQCy96ZsACszuWO2ieuS3DVVyDoMtik+/NrDP1x
         Kn/LEWaJKY8Kcza+Yziha/e61ksEIylcNXhk0LDPXW9zTRtphWIA/0ys2FerKG/JxcRH
         wg4VQzg2I6zPwSb+PXx4XniU8VIg5HS6F0ep6AB/OV7r7j6lIFgVP3viIM8HHceVVk25
         c4UA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZB3BlE0C;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.151.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nEV68H2GGz/AGDO8LmBSa2xkSiBZ0yC2qu4ni9lBh+Q=;
        b=AZaEqsdo7/FvRnjtpgaiiXSv5UISZYseAbV6E+O0zmA/YfW3tkSyqKgzYkdiPsEQJD
         ZX4ejzOTGQBXWr+XYCmnFa9x1gxy40L5WOtXfaQVK9Ft/U7vBCMegzPw5d7seFfZHuxN
         UwGvyPpB+DNWps2snFRX3x9KqsWoWbS1J9xQr0aDytqDm9q0EfcqkmBcBAeXBSRF3HKd
         53GBjpMvxMg0WE9lhQ/PEROdH+FR7uOQL3LEUa8az7YhW1x3y+yrvdhYLKM0HtoWUtH0
         t7VN1IHTgtpwCLRO6Te7b7ERZ1+K1M/ymfkrorwgazXalcwUiC46ziozqjsdA79VgKYe
         m+bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nEV68H2GGz/AGDO8LmBSa2xkSiBZ0yC2qu4ni9lBh+Q=;
        b=SNaKdmQIlSwyDNTznP+g/uqyl+yF8PHwCo/onSk60aHGbL4E09adjIFMoOt5m7l6Yq
         eAdfgM0C/L1sOhSoOcWyZbFn4EcWXIn2LcQHH6kYO39hVy/C+hecQXaWWxMjosTXIJ2+
         x+8bydmh0s0hC/2fgLCvvWt9vCKIeOBU/p5lHhf69PaY3HixpVWrQmlxG/AY9lZ21zf9
         Edqpk/p8ZyHFlFfPwSLUGfrHcRAGv59XdzLPl24hA/zQ8ACIglJ/8muWJXCX8Os1e6h8
         kjL8MxUML8jcRdfh84/EU2jAz+6r0f0HPu5c9ZB8wR8MEoWDPKLezjZIHkUOfd6WZH2+
         5DbA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM530kv/Juf2nLYJPwaW8HGeh5Gwxr/zreWFug7Uv8Kw8qRjoiykIF
	IhsAfZePhak53gUBzM/arP4=
X-Google-Smtp-Source: ABdhPJzwBieAJBuvss4xvZPTJhj/H1subYTTD5WcxqenQGqZE9S90J5UF9xup0Ji4Qh2rZtBGhXLEA==
X-Received: by 2002:a05:622a:248:: with SMTP id c8mr14508067qtx.357.1634317409987;
        Fri, 15 Oct 2021 10:03:29 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac8:5a8e:: with SMTP id c14ls5337696qtc.3.gmail; Fri, 15 Oct
 2021 10:03:29 -0700 (PDT)
X-Received: by 2002:ac8:5fc5:: with SMTP id k5mr14471679qta.273.1634317409548;
        Fri, 15 Oct 2021 10:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634317409; cv=none;
        d=google.com; s=arc-20160816;
        b=GOozB5LjMv9NsITNcce02gzIB2hGLN1msZuUL6fSWafirImFkZpSsVv0mUShptrn8u
         5CgN9wLhZbKXkmWLKRknUw4yFBjV2zhryEu8/Tj4IZVe+DYq0Rp5lmxuUO410X17l733
         4XSF/EuRQO9ebjKdtjm57AEJeqPnU2Q9s2SEiEz3jaMXYSNb9shLhyszbe3oyCPYyFxR
         ZgFPK+2PsoaelbiauoHtpUlZTOAvqezJneZHB+kufmaiM/Bt/mQONRZiMn30ty+2EAb1
         XxTaCfjf8B/1C/Bw5WTqym4rKrqrwT13BdVNDzz23kV5brj1ytkYMe+X6Xfk94Bho+9C
         V8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=4dN0h5lrPhvnBjfapbewXwM2oI6C3bfdTUY0cpFI420=;
        b=Z4amtYOwCdm227C0fGve3w+Mqsyeiz7BGpnGYvLE7HAGWrlZZeI95PVQRtz8uZxL0o
         53GpwsOuA0g5rM+2n7hzbTMEnit2AsWmVWCv4udKRh0mavFfbEktAkdIxos3OHIUttmM
         eIEPauvKXTJfie0bftcFvmCsIpHK8waf9OJuE8gOEbC+0y7NHFekkUPqUCc2PdeyGMQg
         kn9logoGvRKsCDV1d0/P7pGX9Iz9F99SFHiHxuZmS4fdeayluJuKUekpOhQRAnl5f2AT
         Wd5xjUJVE3CGfJqK2PxyxvR/+9Qn3hrLdW7eYoxOXLMNoEVbwn4GF8rDb7dT/OQKZzCy
         txjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=ZB3BlE0C;
       spf=pass (google.com: domain of cleech@redhat.com designates 170.10.151.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (usb-smtp-delivery-124.mimecast.com. [170.10.151.124])
        by gmr-mx.google.com with ESMTPS id i13si117722qkp.1.2021.10.15.10.03.29
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Oct 2021 10:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of cleech@redhat.com designates 170.10.151.124 as permitted sender) client-ip=170.10.151.124;
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-3uZEoW4gPY6havJXNOqvUg-1; Fri, 15 Oct 2021 13:03:26 -0400
X-MC-Unique: 3uZEoW4gPY6havJXNOqvUg-1
Received: by mail-wm1-f71.google.com with SMTP id k9-20020a7bc409000000b0030d978403e9so837888wmi.7
        for <open-iscsi@googlegroups.com>; Fri, 15 Oct 2021 10:03:26 -0700 (PDT)
X-Received: by 2002:adf:ab02:: with SMTP id q2mr15557754wrc.263.1634317405767;
        Fri, 15 Oct 2021 10:03:25 -0700 (PDT)
X-Received: by 2002:adf:ab02:: with SMTP id q2mr15557737wrc.263.1634317405624;
 Fri, 15 Oct 2021 10:03:25 -0700 (PDT)
MIME-Version: 1.0
References: <20211015131115.12720-1-vegard.nossum@oracle.com>
 <20211015133635.GA26418@gondor.apana.org.au> <3bba3fed-b8f8-b7ce-f26f-8d1ed221144a@oracle.com>
In-Reply-To: <3bba3fed-b8f8-b7ce-f26f-8d1ed221144a@oracle.com>
From: Chris Leech <cleech@redhat.com>
Date: Fri, 15 Oct 2021 10:03:14 -0700
Message-ID: <CAPnfmXJPQTcZmPkYVDL4feDH7_P742N1H885suQzJc6u2A9QYQ@mail.gmail.com>
Subject: Re: [PATCH] scsi: libiscsi: select CRYPTO_HASH for ISCSI_TCP
To: Vegard Nossum <vegard.nossum@oracle.com>
Cc: Herbert Xu <herbert@gondor.apana.org.au>, Lee Duncan <lduncan@suse.com>, 
	"James E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen" <martin.petersen@oracle.com>, 
	open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: cleech@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=ZB3BlE0C;
       spf=pass (google.com: domain of cleech@redhat.com designates
 170.10.151.124 as permitted sender) smtp.mailfrom=cleech@redhat.com;
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

On Fri, Oct 15, 2021 at 6:54 AM Vegard Nossum <vegard.nossum@oracle.com> wrote:
>
>
> On 10/15/21 3:36 PM, Herbert Xu wrote:
> > On Fri, Oct 15, 2021 at 03:11:15PM +0200, Vegard Nossum wrote:
> >> Fix the following build/link error by adding a dependency on CRYPTO_HASH:
> >>
> >>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_dgst_header':
> >>   libiscsi_tcp.c:(.text+0x237): undefined reference to `crypto_ahash_digest'
> >>   ld: drivers/scsi/libiscsi_tcp.o: in function `iscsi_tcp_segment_done':
> >>   libiscsi_tcp.c:(.text+0x1325): undefined reference to `crypto_ahash_final'
> >>
> >> Fixes: 5d6ac29b9ebf2 ("iscsi_tcp: Use ahash")
> >> Cc: Herbert Xu <herbert@gondor.apana.org.au>
> >> Signed-off-by: Vegard Nossum <vegard.nossum@oracle.com>
> >> ---
> >>  drivers/scsi/Kconfig | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/drivers/scsi/Kconfig b/drivers/scsi/Kconfig
> >> index 6e3a04107bb65..09764f3c42447 100644
> >> --- a/drivers/scsi/Kconfig
> >> +++ b/drivers/scsi/Kconfig
> >> @@ -290,6 +290,7 @@ config ISCSI_TCP
> >>      tristate "iSCSI Initiator over TCP/IP"
> >>      depends on SCSI && INET
> >>      select CRYPTO
> >> +    select CRYPTO_HASH
> >>      select CRYPTO_MD5
> >>      select CRYPTO_CRC32C
> >>      select SCSI_ISCSI_ATTRS
> >
> > CRYPTO_MD5 already selects CRYPTO_HASH so this shouldn't be needed.
>
> You're right, my apologies.
>
> libiscsi_tcp.o is built for CONFIG_ISCSI_TCP, but it's _also_ built for
> CONFIG_SCSI_CXGB3_ISCSI and CONFIG_SCSI_CXGB4_ISCSI. I missed that when
> I looked at the Makefile and wrongly assumed that CONFIG_ISCSI_TCP was
> missing the select.
>
> I'm not sure what the right fix here would be -- should
> CONFIG_SCSI_CXGB[34]_ISCSI depend on CONFIG_ISCSI_TCP..? Or should we
> add those CRYPTO* selects in there as well?

(apologies for the HTML reply that got rejected by the lists, and the
double reply to those directly addressed)

Are  Kconfig entries for libiscsi and libiscsi_tcp needed to handle
this properly?  Currently they're added to the object lists with each
configured driver that requires them.  I'm not even sure what happens
if you manage to configure them into both obj-y and obj-m.

- Chris Leech

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/CAPnfmXJPQTcZmPkYVDL4feDH7_P742N1H885suQzJc6u2A9QYQ%40mail.gmail.com.

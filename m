Return-Path: <open-iscsi+bncBDLIXLMFVAERB77M26SAMGQEJAADF5I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B7573BF0D
	for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 21:46:10 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id 2adb3069b0e04-4edbdd8268bsf796488e87.2
        for <lists+open-iscsi@lfdr.de>; Fri, 23 Jun 2023 12:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1687549570; cv=pass;
        d=google.com; s=arc-20160816;
        b=HqVZyXtW0VZsyY/2itrZQkjhESxquFBtRnaBRtzrDDmKLAKpQVH60rTrxdIkhBCY4z
         NGjBcIvbJeWGA4a05SU+V/aH4XpD9R+OZe50DIstWd7khQnbeVkAGjAEyrx4FmCToAm2
         Jmsys4Q8Fsz2KBQSKFxDG1ckk0u1XVWhkbS1N5cyXCenLpdAzMzjMCN9FNoylh2BKzLU
         PGq2ohyW7gqc8V01gn3gnHKVtHVpz4H0OqATBWdeAWlQnpDP4dNtWQPMPEsbYePfu7pN
         TDU8wMlUc5QOwciuUrU7qbsC/3bNBYPCkXIgdbcLHxRAjVXbkXNM3bwivUU9/RBgC1eV
         QYmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:message-id:date:content-id
         :mime-version:subject:cc:to:references:in-reply-to:from:organization
         :sender:dkim-signature;
        bh=IsStPyYMnrfh059VazTbcbe+QLJ0/LkRDrApNXEzkhw=;
        b=utnaq7pNFSkzxirWFCclvRxPMRKhhMiGyW5Dtr3ENlDXfyQweWP/940a/pBc7iQKEo
         dZvFiy4q2qZDG+dodP2vM70c/Ix7+mUWNX5RsCAmOhUzPYwr8L5Nwvfpnzvi8RjZn7L7
         oqWn436i+GllyFw3Mopv7OVIWzEt40cKlIisXB8+lwubO/Qf7oLCOfzZJv3Taa8Vbd9E
         lTjI5zFkqnc8y0BS9pmU97r+Gx7uJSRbeTsda8mA4ZtUX2CAL2jpmM8SVlJCnoxjz5cl
         ps4HUXd44azvaS/3Q6R7/UPkxsiz80YZ1InMi7Np2rPfy+jHkSWjDWpzS5oKF3MlKE/G
         fBHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="e/2GjBIh";
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20221208; t=1687549570; x=1690141570;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :content-id:mime-version:subject:cc:to:references:in-reply-to:from
         :organization:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=IsStPyYMnrfh059VazTbcbe+QLJ0/LkRDrApNXEzkhw=;
        b=HrJmyrnalcaQVgjvhyB/zKMWNmPQjJdYl4zICaw9Xug6IYwuDhYk6heu/oVHVniLER
         DSFM3l1jJt+SeETr5scnJ23OTiDpwVjT3YxEQ/79OUzFcjBgn6poKHo7zmUsthmuVuFR
         XE7O0o6U9jUmeYgME3wZCaGQXLBERJHnSKdk2RTDPULCZwXd66DdNTi50E8UlK+E7kAy
         yrXXmQbLsYbHwQFPLOCROKJVQmFGoFF/AZuSi3go/fOuqQme8RfBElJN0m0At9lhsxuw
         WjEVibChbKxrTurfSYJsccrl/5hTKvjsnl5QGoCm2Y+LTA/LZrsL9tJc/oDgnd9rKZMz
         SguA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687549570; x=1690141570;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:message-id:date
         :content-id:mime-version:subject:cc:to:references:in-reply-to:from
         :organization:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IsStPyYMnrfh059VazTbcbe+QLJ0/LkRDrApNXEzkhw=;
        b=fl8J0wrckBLpsRCbSeEEAmx/yC3blBISVDZt5F1RzRazU6QA4owyJsZCwmGoDxcAAz
         90/f6uFnFTXhNb76MqWU6d2OpZexuxwE5PEv4xMhyMdyWG0dEmCPPj7/PCLBPUBL9F/Z
         94mw7wHkqcVOsuo2qKeKNfoxHmWliBlJi3cm0CM852gvlSTeFKD/N/ZGwhqowoQ0ynKs
         YJG07RjdTs0QocS7R1k0j/ZOg3PnvChZLbA/9/CD2e9NncSudrLxN6QQITRPNcEdQiRI
         Oup38cuHmQYX0kL6aNer4sri2w7SkWGwD8SOtpcpQRzNUf/Pyjv/zQZFE3tdKetJaJXb
         eyHQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AC+VfDwEGT/Gpi9ocVEXvKgwlqcQNNN1aMhZeT65MACrJGpiThrKxHbY
	hMXBs6k7AvE7DDWNTScXR7o=
X-Google-Smtp-Source: ACHHUZ6PnA7DuXZ6ZnvpahQMzzjZDrcvyNBONlQ9Sq8huiOV7+N2lynAN8xyUFCqhcYW5NMFK+qmiA==
X-Received: by 2002:a05:6512:291:b0:4f8:6e26:9347 with SMTP id j17-20020a056512029100b004f86e269347mr12179492lfp.68.1687549569857;
        Fri, 23 Jun 2023 12:46:09 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:ac2:5b90:0:b0:4f9:592b:bdbb with SMTP id o16-20020ac25b90000000b004f9592bbdbbls1039015lfn.1.-pod-prod-03-eu;
 Fri, 23 Jun 2023 12:46:06 -0700 (PDT)
X-Received: by 2002:a05:6512:3e25:b0:4f9:70fe:d92a with SMTP id i37-20020a0565123e2500b004f970fed92amr2136554lfv.5.1687549566516;
        Fri, 23 Jun 2023 12:46:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1687549566; cv=none;
        d=google.com; s=arc-20160816;
        b=AZcp0DMa9LCE4oQBUk0wUqM1KfTeOxSrcPua1Fjl2U8uIoImkEsOZcTqoFmWrM6gcX
         0hWlDkKSN74+4B5V77VvsSzmbSAH99/ytsr/oAwZVtqsB8uCeMUfdBsUMq1dgR9UTsLU
         xL1X+Pu7n1gMkK1CZGADfxKWgGh0djHqg+GOmTM1y00saMAzy5slLVwO1v+ZALDZ7lAX
         guc2plMrrrbYtWR/Y4BL/SlyDwLSmxeP3wFNlsHfA+Vp9IzNs9du+44K+xkG76xqmL4h
         SFMysaziYqZMamuYWqlyN1339iLK7vVBApiLp1UTmNmq9s/oFnTrW684HHgugHpE903G
         rlCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:content-id:mime-version:subject:cc:to:references
         :in-reply-to:from:organization:dkim-signature;
        bh=S7cXFIATv0cqvFDOdx2Vy9pFsZWT3roW5tnB/9pxEhg=;
        b=NgZguYuk6JQsmflycZCWue08Q4kLHvP9nbKVGEkIxGkPKX9d27UIAo4evnH55iTo9X
         gtOG7DjnaKP0zhIlNCBCvJHAitkFbi+QraHrOzRXStb5yvKYqcqeo8SICkzQWjDsxTKn
         0Ea6iAGm1qxO0Rzbnhy6MI16y3Bs6lxxtszpCWc3JcddVfHWZc69HL0Kuo9wvweeDcU1
         RRz5JOQE4GN4KATqnyTGyuqnE7+HcA3uevbKO4qLkWH/hJjK0ZaCB9A3s17jumJO0B+S
         PDBYOVxwiN8CLPWYSJfVN57wjyiqCnv/4u1Xc0qnZEyAMsPhWOJ4aoPzn3UdWv8xObBV
         yQnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="e/2GjBIh";
       spf=pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id es12-20020a056402380c00b0051a52a2f5f0si602493edb.0.2023.06.23.12.46.06
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 12:46:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dhowells@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-422-tWsHGO7zMPmi0H68AQg1cg-1; Fri, 23 Jun 2023 15:46:01 -0400
X-MC-Unique: tWsHGO7zMPmi0H68AQg1cg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 17FBE29AB435;
	Fri, 23 Jun 2023 19:45:59 +0000 (UTC)
Received: from warthog.procyon.org.uk (unknown [10.42.28.4])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 91DA92166B25;
	Fri, 23 Jun 2023 19:45:56 +0000 (UTC)
Organization: Red Hat UK Ltd. Registered Address: Red Hat UK Ltd, Amberley
	Place, 107-111 Peascod Street, Windsor, Berkshire, SI4 1TE, United
	Kingdom.
	Registered in England and Wales under Company Registration No. 3798903
From: David Howells <dhowells@redhat.com>
In-Reply-To: <27fd3750-7b9c-9638-26d8-0df3f0e33b81@oracle.com>
References: <27fd3750-7b9c-9638-26d8-0df3f0e33b81@oracle.com> <20230623114425.2150536-1-dhowells@redhat.com> <20230623114425.2150536-12-dhowells@redhat.com>
To: Mike Christie <michael.christie@oracle.com>
Cc: dhowells@redhat.com, netdev@vger.kernel.org,
    Alexander Duyck <alexander.duyck@gmail.com>,
    "David S. Miller" <davem@davemloft.net>,
    Eric Dumazet <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
    Paolo Abeni <pabeni@redhat.com>,
    Willem de Bruijn <willemdebruijn.kernel@gmail.com>,
    David Ahern <dsahern@kernel.org>,
    Matthew Wilcox <willy@infradead.org>, Jens Axboe <axboe@kernel.dk>,
    linux-mm@kvack.org, linux-kernel@vger.kernel.org,
    Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>,
    Maurizio Lombardi <mlombard@redhat.com>,
    "James E.J. Bottomley" <jejb@linux.ibm.com>,
    "Martin
 K. Petersen" <martin.petersen@oracle.com>,
    Al Viro <viro@zeniv.linux.org.uk>, open-iscsi@googlegroups.com,
    linux-scsi@vger.kernel.org, target-devel@vger.kernel.org,
    Dimitri KRAVTCHUK <dimitri.kravtchuk@oracle.com>
Subject: Re: [PATCH net-next v4 11/15] iscsi: Use sendmsg(MSG_SPLICE_PAGES) rather than sendpage
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-ID: <2611149.1687549556.1@warthog.procyon.org.uk>
Date: Fri, 23 Jun 2023 20:45:56 +0100
Message-ID: <2611150.1687549556@warthog.procyon.org.uk>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.6
X-Original-Sender: dhowells@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="e/2GjBIh";
       spf=pass (google.com: domain of dhowells@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=dhowells@redhat.com;
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

Mike Christie <michael.christie@oracle.com> wrote:

> 
> One question on the target part I had is about the TODO above. Is that
> something you were going to do, or is it something you are asking the target
> people to do?

I've got an in-progress patch for that, but it's not the simplest code to
modify.  I'm holding off on completing it till the simpler cleanup is in.  I
might end up having to push the incomplete patch your way to ask for advice on
how to complete it.

David

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/2611150.1687549556%40warthog.procyon.org.uk.

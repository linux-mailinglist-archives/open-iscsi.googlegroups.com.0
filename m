Return-Path: <open-iscsi+bncBD2Y5LOX3EDRBA7E46OAMGQENJIF2JA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B7A064CD70
	for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 16:55:50 +0100 (CET)
Received: by mail-oo1-xc3c.google.com with SMTP id x20-20020a4a6214000000b004a36ed7679esf6723105ooc.15
        for <lists+open-iscsi@lfdr.de>; Wed, 14 Dec 2022 07:55:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1671033349; cv=pass;
        d=google.com; s=arc-20160816;
        b=AGYgvN0cZt0BZZ43RGH4Gv3PzCtC3ukwegwg5BHREaIMrjmZuNYtjamJFMIz2P1E41
         yf2kHwPoJFfSko1N/gOwkoxQaaaaL/DavqlOYnYPGB4GB4T3lJkZqv5s37waQOk8MkQq
         veT8i7EWFzQnUT7YHpDgTMsb86dTs/JhLJNUyNJispvy2qCp9K1BDg8bPwPPpBmsd5Ra
         B2GY3Zj8h8ExNh7+JeeLkQaUKgp5Tc5m5cqW5NuRp8w84idgBixKGE1I7YXhKAKAkiW1
         ovEtBJONSyXQy0A/SaQibMTmeF9HCeVZrDpoKc+5JqMec98ct5Mlf7s/qqg4ayfA1QF4
         Yolw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:user-agent
         :references:in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=ygk+XSp/VSFEyxydqSSt/HYKTSkJ1E4z3tjvMXzDipI=;
        b=pjdEaPq/jEnjRlMvLGOXjA2XsPMSAT0wmGVutTKENT2Pevoq952gr70XJbaUp9o3Hj
         l29EttSLlRxiRAEnkRXQ3LOickeJ978DeoyG/UG/CCNxxzkaJi69dMJL6E6dbu3pRh7v
         4Lv/N4WSuriU16l+yFl8Wck/VSvEsBKss2jU1Tc4jdxsSfFHNBCKfS6lcB4SageNhB1N
         IqGP8HTvdxyPCrUzBJj9c3mJhuC4TgniYYYY7cfNmwn4lSW12bRNke5UTd0j0lu/86dJ
         ItyjdVUI8RD4222BC0mzof4/t352G0Nwoy6PejmcNh2dMMlRTiq414rwhrf5GjhB6X0s
         d4MA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cPRI/kR8";
       spf=pass (google.com: domain of pabeni@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:cc:to:from:subject
         :message-id:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=ygk+XSp/VSFEyxydqSSt/HYKTSkJ1E4z3tjvMXzDipI=;
        b=kyafWQ0f8z5/KAX+lzykmR50+iMLmUWjpkcraWWoYFE9xFli37XsfB7iVKmVojlfr2
         AFOvZnfXwYv9PLj5Sf2l1QpI/o+mdpEtE5LvTcY2Ep7TgwYcl41V2t5FVJR90dGOPPBW
         DMF1aWGkNtBRygjlgu0Rey1UKYiwzuGVCM2boUCh7CJNS0YGB9k+P1niDvfV4ekKaYZz
         ftxsS1y7LoI5ze3/UtoJI6p+QNXq3p329vJc5xZl/JpFMmfCqp4It1WFQvL764db+XIf
         4EqDOyRdAUKQbLn3hBcRXGIqlW4vaDPhrE+pFXkVyYEtxRfT4hvsIO0hlgXoGHJaPhLb
         8zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :user-agent:references:in-reply-to:date:cc:to:from:subject
         :message-id:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ygk+XSp/VSFEyxydqSSt/HYKTSkJ1E4z3tjvMXzDipI=;
        b=HJlpBaMZGvW37rWT1DlQtcjDbQKLDk3S7JHwi3632vwJP/gDgIqcOp1srAryidiXYa
         cjpMvZLaNpKn5N481sK1eYxMx7j3t860qLUhb/BIG1KoBLOCkWLxsvmciNTSV8dWGi3t
         q8ynndqtUX9lVR/d3sAulyHS0ec2vteb0B3nlaN0WpR3lgiBNph6lrOmv7vs/esDg6O2
         lHf3tZnO4/W4EsQTItfoOObauf+QdKV7fwQ1TINGSqR2xH8hGRPgSCXlA1HTsXyPSw+r
         Ab3lBKXEd9RymAHR2JvLiT5/WaH0vukDBDyJfW/akvuhvbrce5TBpK7zzdhjZ3pwqXjD
         LW7w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AFqh2kqIJo7LHfZC4c7CuVEtYqGxlohCqyyr+jFBYSQcYmBN2tQtZVOJ
	nRPSmChp9oJ5bGH6SS3vRpQ=
X-Google-Smtp-Source: AA0mqf4EF/rJ8iQsh5YyK1C+GD1RnopNnzecHVoo0XR2ApAJWXQl/qhzAjtU8eg8JeUTydknypI/Gw==
X-Received: by 2002:a05:6870:638b:b0:144:96b3:5fd7 with SMTP id t11-20020a056870638b00b0014496b35fd7mr225337oap.173.1671033348873;
        Wed, 14 Dec 2022 07:55:48 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6870:73c3:b0:13d:21ad:3b97 with SMTP id
 a3-20020a05687073c300b0013d21ad3b97ls6767587oan.4.-pod-prod-gmail; Wed, 14
 Dec 2022 07:55:47 -0800 (PST)
X-Received: by 2002:a05:6870:311e:b0:144:3474:e13b with SMTP id v30-20020a056870311e00b001443474e13bmr236845oaa.221.1671033347572;
        Wed, 14 Dec 2022 07:55:47 -0800 (PST)
Received: by 2002:aca:acc3:0:b0:35b:d061:aabf with SMTP id 5614622812f47-35e5511c709msb6e;
        Fri, 9 Dec 2022 08:51:14 -0800 (PST)
X-Received: by 2002:a17:903:258d:b0:189:89e2:5406 with SMTP id jb13-20020a170903258d00b0018989e25406mr5848529plb.24.1670604674154;
        Fri, 09 Dec 2022 08:51:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1670604674; cv=none;
        d=google.com; s=arc-20160816;
        b=ghzmvwsionRocv6YYjtH/UvcPHJK+rESPzIWoa0Phdcm1pQOw6cuzPoGLKdrp1Qe/7
         WfzAd0grzqT9AXrVwdHytmTqJBMtI7SWC+xdrWTgTkdnmapYXnP7vi7zu4XPFiXmH0gG
         lCBMHDjQ934n2SDCBYG93p3MlYngr8rfzXD25bILKXVlB6dmB/ZjW4gzFGITDgESMkcT
         X4uiBFOcFl6ts5dssw5S7y7TPILE/X2gaMFSJGByDI1ymQoskFJMu/u//pOhWM5qgALl
         KANuTrNa/r1X54FNEEh3jSGFD1lA/d2T7JZsw5paKCVSKdZ3GMAimNlOMHuG42Cn4FDP
         6h0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=hEHtknj7G67yuPB9tWefZgr9ALjA/T5Vl29gdCA8cwI=;
        b=vvgajLHXfrlljR0VvHxJgcNSaSWJG+H0qZsIIlub/wd2qGzKctrLrbxhK9Xw5uzud+
         qtZFUEZ4YxPDrrYoCreS1k/kiyQSVNIUFLODBCMInSBxrCYB6l3sxeWvbxr5Rbcm4/hm
         uFOtHGa/+b1ejFHZt8wwhSoes+KXkZNcINhe3O6mIVHx7U95+MWNSzMpHejOI4vcpBHx
         yoOtOnMoF0LVZXIVeDpW/Dmv6eLE+Am2vgEhq48I9euGej2BM0yI8IW1FAOc1H1wS9nd
         hUvXvKyj/1kECrTu9jHkbHW4yJjDk97zr8082CkBrRt6Ty6zZEfB5xfao+yhLSoi4N3I
         wkCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="cPRI/kR8";
       spf=pass (google.com: domain of pabeni@redhat.com designates 170.10.129.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.129.124])
        by gmr-mx.google.com with ESMTPS id i17-20020a170902c95100b00186850a4ecbsi164596pla.10.2022.12.09.08.51.13
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Dec 2022 08:51:14 -0800 (PST)
Received-SPF: pass (google.com: domain of pabeni@redhat.com designates 170.10.129.124 as permitted sender) client-ip=170.10.129.124;
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_128_GCM_SHA256) id
 us-mta-13-9pmPqH_uPXu0hNy67wHpuA-1; Fri, 09 Dec 2022 11:51:10 -0500
X-MC-Unique: 9pmPqH_uPXu0hNy67wHpuA-1
Received: by mail-wm1-f70.google.com with SMTP id v125-20020a1cac83000000b003cfa148576dso144552wme.3
        for <open-iscsi@googlegroups.com>; Fri, 09 Dec 2022 08:51:10 -0800 (PST)
X-Received: by 2002:a05:600c:4f48:b0:3cf:e850:4435 with SMTP id m8-20020a05600c4f4800b003cfe8504435mr5700793wmq.13.1670604669149;
        Fri, 09 Dec 2022 08:51:09 -0800 (PST)
X-Received: by 2002:a05:600c:4f48:b0:3cf:e850:4435 with SMTP id m8-20020a05600c4f4800b003cfe8504435mr5700758wmq.13.1670604668951;
        Fri, 09 Dec 2022 08:51:08 -0800 (PST)
Received: from gerbillo.redhat.com (146-241-105-105.dyn.eolo.it. [146.241.105.105])
        by smtp.gmail.com with ESMTPSA id ay13-20020a05600c1e0d00b003c6bd91caa5sm302339wmb.17.2022.12.09.08.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Dec 2022 08:51:08 -0800 (PST)
Message-ID: <73186bd6e1ad62da16726b95b1a266c0aeb39719.camel@redhat.com>
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>
Cc: Benjamin Coddington <bcodding@redhat.com>, netdev@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Philipp Reisner <philipp.reisner@linbit.com>,
  Lars Ellenberg <lars.ellenberg@linbit.com>, Christoph
 =?ISO-8859-1?Q?B=F6hmwalder?= <christoph.boehmwalder@linbit.com>, Jens
 Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>, Keith Busch
 <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>, Sagi Grimberg
 <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,  Chris Leech
 <cleech@redhat.com>, Mike Christie <michael.christie@oracle.com>, "James
 E.J. Bottomley" <jejb@linux.ibm.com>, "Martin K. Petersen"
 <martin.petersen@oracle.com>,  Valentina Manea
 <valentina.manea.m@gmail.com>, Shuah Khan <shuah@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, David Howells
 <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>, Steve French
 <sfrench@samba.org>, Christine Caulfield <ccaulfie@redhat.com>, David
 Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,  Joel Becker
 <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>, Eric Van
 Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Ilya Dryomov
 <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>, Anna Schumaker <anna@kernel.org>, Chuck
 Lever <chuck.lever@oracle.com>, Jeff Layton <jlayton@kernel.org>, 
 drbd-dev@lists.linbit.com, linux-block@vger.kernel.org,
 nbd@other.debian.org,  linux-nvme@lists.infradead.org,
 open-iscsi@googlegroups.com,  linux-scsi@vger.kernel.org,
 linux-usb@vger.kernel.org,  linux-afs@lists.infradead.org,
 linux-cifs@vger.kernel.org,  samba-technical@lists.samba.org,
 cluster-devel@redhat.com,  ocfs2-devel@oss.oracle.com,
 v9fs-developer@lists.sourceforge.net,  ceph-devel@vger.kernel.org,
 linux-nfs@vger.kernel.org
Date: Fri, 09 Dec 2022 17:50:53 +0100
In-Reply-To: <20221209081101.7500478c@kernel.org>
References: <cover.1669036433.git.bcodding@redhat.com>
	 <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
	 <d220402a232e204676d9100d6fe4c2ae08f753ee.camel@redhat.com>
	 <20221209081101.7500478c@kernel.org>
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: pabeni@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="cPRI/kR8";
       spf=pass (google.com: domain of pabeni@redhat.com designates
 170.10.129.124 as permitted sender) smtp.mailfrom=pabeni@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On Fri, 2022-12-09 at 08:11 -0800, Jakub Kicinski wrote:
> On Fri, 09 Dec 2022 13:37:08 +0100 Paolo Abeni wrote:
> > I think this is the most feasible way out of the existing issue, and I
> > think this patchset should go via the networking tree, targeting the
> > Linux 6.2.
> 
> FWIW some fields had been moved so this will not longer apply cleanly,
> see b534dc46c8ae016. But I think we can apply it to net since the merge
> window is upon us? Just a heads up.

We will need an additional revision, see my reply to patch 3/3. I think
the -net tree should be the appropriate target.

Thanks,

Paolo

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/73186bd6e1ad62da16726b95b1a266c0aeb39719.camel%40redhat.com.

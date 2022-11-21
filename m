Return-Path: <open-iscsi+bncBCCZL45QXABBBE567KNQMGQE7X4ZHWQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D357636D15
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:30:45 +0100 (CET)
Received: by mail-qk1-x738.google.com with SMTP id o13-20020a05620a2a0d00b006cf9085682dsf23971816qkp.7
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:30:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242644; cv=pass;
        d=google.com; s=arc-20160816;
        b=l83+lVrCOvy0hnQwX/x7aenp2XljLMiueAmXF37cIewNiB0DhBGHjMjgw0k5fDSmTK
         6CbuVLsUWqcozVI/Z8cbtarRYrYfFxnnnHpF3eTTtdBAbVjRmLgckLRATDMuEEzGHAyC
         yhZIuoXKOvh3VwixYDykY4DVU24iugVbTlsxOrXvoliPzDRSbi8k+W96sic3wtr6DFir
         Kawhb8TvEbUaF7K9sP72Bcfv56mw93ps5EA9kgET6URqWWlLlAsi+R0izU1QZwgP0X1M
         MF594XRZCgmV7I4x1WAJcYjABApZFyTMW7P7UAc37LG5527AUtzaJJTdQGJkLfUhJItn
         OCaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=XZXFzq0dJxXzkV38dcRON3IKFI9AGaPijUOq5/eB+74=;
        b=eN+h1vkzJuBZFRACKRHPFHBJVOI8LaG7BWFvIlTNEDOVkolrK6Czeu2oF7JQcRkKiq
         3/q3nb2cLQcSMqrFhaWG7br+I+4Eeq0UUorKAQh9mgl+T47Z3Mla0t4hXqX1T0kFt8Hx
         8rqda9ioN5XWJURB8vsjF0GWObfkavKDuueB7q45LrN5ZGeSSyDPrcmRlfeXhG0+jfli
         vcTNTUa4X3wjRqcuQTasz/M2cVf+e33N+id62DUUgD2p0r7nrGBcQIAv12Y4vBabeXQt
         38ep6d8ia/cn4Q165QfEkJ3+1kjewXC5jJAvLNfpeWVGhCUVOrO6797n60W5LRItsyMz
         CB1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tmrax2Ht;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XZXFzq0dJxXzkV38dcRON3IKFI9AGaPijUOq5/eB+74=;
        b=hFoLRE9PvsfTvu2oWsJU/HU8ir0Cz+h54emRyZLenbtAzrLrzk/YW01sy7eogaOWKi
         cBFQZAIyUVR5BwhmO/jA+1mTzojS48sBkU35mElDVsesz+yxNbo/rqURfhQinjoxMzWk
         iHL8KsZeNrpVFYOZHhcMHxAjPnWOQSTC5s3nafD/wKn6IoB0BQ+62B01A8PymK/hMM3k
         FMQU+a5fWW+iBNzGgHYveoA30CbpbxM+d47puvwZ0bvsyvnojFNsssCcc0kMFUDNAj43
         OTuAoRh1SyjCPsNL04E90N47ZpPT9BwE3c69djNmB9zUyG7VwZOMQdfUPPu7A+g0jh6O
         gceQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XZXFzq0dJxXzkV38dcRON3IKFI9AGaPijUOq5/eB+74=;
        b=DcqjV0BowVkA7lISCxdGp5gjcXII5r7yAq1AwJ0SWDUZIv7SZDDjj1Mc5Q21dttUhG
         +vVTAqX4Rx3DUmDw1Ghufl25R4zyNlK8mvB7TDfWvbcL12GmFgcBRGU7KfubpT2jXb+A
         6dywgEx3IHtn97j+Ulvj3mPq/4l89JRelZgetdz2opLALO6sDx+tbeMXd7SNivIrIqh9
         jdF50qze98IS8JDUGQIsHbbI4gmXJfl/ZBjuifLg+N9e6rNQ+Edafhj9G7Rv13MEMdL0
         f/Mvmxz4ZxbtaqMnUMZOySPU6Ttnenr8pCRNvzC/8bq+5/DieWHNbg3BAPmpnBXnoAn9
         ybvw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5plxwg3V3eYGfUcOtvYYfgeUvUV+KYyQ/uJMvuM4F2rahOtWVbTT
	Mb4QP+/2/ZVBqNQt+6zxajw=
X-Google-Smtp-Source: AA0mqf4ZAFfFD+MbX+UNaHTmCXEiW/faIg+6l/keoRxc2FlVaYOX2J/HalYrsJ75TjM43M942s3DcQ==
X-Received: by 2002:a0c:efd0:0:b0:4bb:a80f:3f43 with SMTP id a16-20020a0cefd0000000b004bba80f3f43mr11198715qvt.43.1669242644199;
        Wed, 23 Nov 2022 14:30:44 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a0c:b35b:0:b0:4c6:8368:e076 with SMTP id a27-20020a0cb35b000000b004c68368e076ls89997qvf.9.-pod-prod-gmail;
 Wed, 23 Nov 2022 14:30:42 -0800 (PST)
X-Received: by 2002:a0c:fe47:0:b0:4bb:e74a:f640 with SMTP id u7-20020a0cfe47000000b004bbe74af640mr10411095qvs.36.1669242642911;
        Wed, 23 Nov 2022 14:30:42 -0800 (PST)
Received: by 2002:a05:620a:4113:b0:6ee:e13b:85df with SMTP id af79cd13be357-6fc11387a63ms85a;
        Mon, 21 Nov 2022 13:41:01 -0800 (PST)
X-Received: by 2002:ae9:d846:0:b0:6ec:5332:6ebd with SMTP id u67-20020ae9d846000000b006ec53326ebdmr18519218qkf.0.1669066861309;
        Mon, 21 Nov 2022 13:41:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669066861; cv=none;
        d=google.com; s=arc-20160816;
        b=epI3K8OqsTG11sNj908HMmORCdo/SdZrSAVzGjpF07BEIbnJjcFrVmG88HrYVBU3eO
         MA7SEPhB3bimxfaTEYRQm/CmiwMSiz5aQFqXhzLFgDTHBY498FRO2jyJIRmlncr2NLVh
         XRDBdV4+S3zp1Ho+oIJ7a6bDgYWTvsRbhRFfs7GYsurlwedRm1EjnreKV7K0DzfS2uDV
         3elJEP0wfP8VLXGg169G2igzob9vejao8A/wUC3LIqx0fjppWlZyrUYLnvyaziGfgTHM
         J6xrR6njHzUM2yiAvNpdfrmK2jY17aE8mFH0t5BADXE1V7Xs703CCEg4kONsSdvNe6PL
         xE3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=0+xfYS/683CuEX8Moz7DN5D+iq5a+HRddPc04OAxt08=;
        b=DFtbjKJ5b7b+aj464y8QdhP1X4xwqEOhB70qToLjsxqB3/8CqTQK5tf2tw9J14GZtt
         b4wtzVE/5nsImRtGxbtYxY6eS25nIDFFNdF9Hkd39g525E/ARGDI7ddSiQ3CM3Vyepvc
         kd796aeNSSyghlQ1Sp8mcqrwJKl1pMuY/5VV582bBZybeEsikgo9S0k0mqhA7Fse2D97
         Cc7jYriYWaqXcJ6vNuOnKVeW5/T9ao2klMYcZL2b09N68FemNNr87ZZ9BskUDuPfe5NE
         9qkTg1mA+EmjCD62OxhB5BjLCK3DBPhg8vS2TfIvmemEKB3mxSDwvyGE43UXd7YQawXI
         NLmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Tmrax2Ht;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id z2-20020ae9c102000000b006fa81f6aaf7si444119qki.7.2022.11.21.13.41.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 13:41:01 -0800 (PST)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id y6so9612719iof.9
        for <open-iscsi@googlegroups.com>; Mon, 21 Nov 2022 13:41:01 -0800 (PST)
X-Received: by 2002:a05:6638:3786:b0:363:b82d:d510 with SMTP id w6-20020a056638378600b00363b82dd510mr9070708jal.112.1669066860689;
        Mon, 21 Nov 2022 13:41:00 -0800 (PST)
Received: from [192.168.1.128] ([38.15.45.1])
        by smtp.gmail.com with ESMTPSA id w11-20020a056638024b00b0037609ad8485sm4704611jaq.69.2022.11.21.13.40.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 13:40:59 -0800 (PST)
Message-ID: <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
Date: Mon, 21 Nov 2022 14:40:56 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v1 2/3] Treewide: Stop corrupting socket's task_frag
Content-Language: en-US
To: Benjamin Coddington <bcodding@redhat.com>,
 David Howells <dhowells@redhat.com>
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 Philipp Reisner <philipp.reisner@linbit.com>,
 Lars Ellenberg <lars.ellenberg@linbit.com>,
 =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>,
 Jens Axboe <axboe@kernel.dk>, Josef Bacik <josef@toxicpanda.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, Lee Duncan <lduncan@suse.com>,
 Chris Leech <cleech@redhat.com>, Mike Christie
 <michael.christie@oracle.com>, "James E.J. Bottomley" <jejb@linux.ibm.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>,
 Valentina Manea <valentina.manea.m@gmail.com>, Shuah Khan
 <shuah@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Marc Dionne <marc.dionne@auristor.com>, Steve French <sfrench@samba.org>,
 Christine Caulfield <ccaulfie@redhat.com>,
 David Teigland <teigland@redhat.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>,
 Eric Van Hensbergen <ericvh@gmail.com>, Latchesar Ionkov <lucho@ionkov.net>,
 Dominique Martinet <asmadeus@codewreck.org>,
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Ilya Dryomov <idryomov@gmail.com>, Xiubo Li <xiubli@redhat.com>,
 Trond Myklebust <trond.myklebust@hammerspace.com>,
 Anna Schumaker <anna@kernel.org>, Chuck Lever <chuck.lever@oracle.com>,
 Jeff Layton <jlayton@kernel.org>, drbd-dev@lists.linbit.com,
 linux-block@vger.kernel.org, nbd@other.debian.org,
 linux-nvme@lists.infradead.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-afs@lists.infradead.org, linux-cifs@vger.kernel.org,
 samba-technical@lists.samba.org, cluster-devel@redhat.com,
 ocfs2-devel@oss.oracle.com, v9fs-developer@lists.sourceforge.net,
 ceph-devel@vger.kernel.org, linux-nfs@vger.kernel.org,
 Shuah Khan <skhan@linuxfoundation.org>
References: <c2ec184226acd21a191ccc1aa46a1d7e43ca7104.1669036433.git.bcodding@redhat.com>
 <cover.1669036433.git.bcodding@redhat.com>
 <382872.1669039019@warthog.procyon.org.uk>
 <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <51B5418D-34FB-4E87-B87A-6C3FCDF8B21C@redhat.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=Tmrax2Ht;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On 11/21/22 07:34, Benjamin Coddington wrote:
> On 21 Nov 2022, at 8:56, David Howells wrote:
> 
>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>
>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>> when it is safe to use current->task_frag.
>>
>> Um, what's task_frag?
> 
> Its a per-task page_frag used to coalesce small writes for networking -- see:
> 
> 5640f7685831 net: use a per task frag allocator
> 
> Ben
> 
> 

I am not seeing this in the mainline. Where can find this commit?

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/4585e331-03ad-959f-e715-29af15f63712%40linuxfoundation.org.

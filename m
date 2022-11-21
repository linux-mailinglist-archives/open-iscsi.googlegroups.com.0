Return-Path: <open-iscsi+bncBCCZL45QXABBBQF67KNQMGQE6NXPQEI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 09E9A636D1B
	for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 23:31:31 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id r17-20020a056830135100b0066c3ca9c6d8sf7634650otq.15
        for <lists+open-iscsi@lfdr.de>; Wed, 23 Nov 2022 14:31:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1669242689; cv=pass;
        d=google.com; s=arc-20160816;
        b=Tf744ShvBI0x2kzIHFjec0DfOInBy1Pna8JiLbPpIcqvrqrbV82bcRE3YxyBk6dn+D
         rjBicWvUxqTr4vRlRwepVKd0CM5fln4iVQAGf3uX8MWM+D7xVzq6HqtoNYH3hnOMAVSU
         BxtqWAfvYZfob+VEIpSIp7PYNXxhW9RDx0scMMkQvx7n0vZBnnk4y7AX1+Mo4JG963lA
         yC25GkYCvuDKvsLn5QgjyWLivl/R8LB29R3AmY2ihRK8AVkdj2PMF7cvBCiKdVcgLtkj
         LnIBK2/wB091/fFggYXTXM9oM8WqWm8OtSCSi6hNamozwHPnIgPxksJ/r2Sedeo1OAz2
         jN2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=gvGPRi9uqrLKl7QISyJSPfkap5J5Hc6h1cqVX4FPoIQ=;
        b=S/A5DSWCHSgJnqGgrGHssZiRLO3dG1VBFVWqU8ORKrQPGWimN47aR56hSBPpsVtIRO
         9IYvAiHX4GUjzkW4x7tqjKj4SS52gDlUfZET26ulzITRw8KTbhwLjZ5HfKWO8jTGzBON
         Rk/x087SNgjzUawQUXNawu5ix8rBlUXtbyCRS5YP6Tn7foM+bUwPZ0Ayv8KKCFtVhvZh
         tG2FkM49Pb/CEFa1LHnApyTGiFdmngf3tg54nmBhrsDbHs0CHliFI02BDU4oOn055DX2
         3EYo9fuP/sLkYsIQ9poPjmDq/E8jxANPO8SWndJUsdwjOQqrEyCLAes2TE6P3IFtYiw9
         S1JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OHO4FjaP;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gvGPRi9uqrLKl7QISyJSPfkap5J5Hc6h1cqVX4FPoIQ=;
        b=HLVPasDplnBZgRSIHIg9r9R/SpXw5lhWYfuYy6ibsSnsXsYtsn6mF042+mDXAl/xpe
         myXRor+cR9icFhy426JbDhXMzMsSlQdJsJQ2/vkXTbg41QwYdJrHvK3xFrShCzqDQcpD
         olJUzvPM1DcYtHHsHdOOpk7S7VnnSGxbl73l14tL9Z0mwdyUXuSZ2v/pO6PX/yis/FBp
         +TQ/HsAvP+j/QXJXlalsG+J/x95g/+RIDZgbpIFwquOCPKgYJAYH1YP/kevSSu2U7r/H
         bdTWBHRO39FITs1uLunl8+sm/0r1tprDoFp54B1rx63IcQ5iaGCyVvllAdzqULkOR4hR
         9npg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gvGPRi9uqrLKl7QISyJSPfkap5J5Hc6h1cqVX4FPoIQ=;
        b=GLXllBQbwck/t91FT4QKrTBulwfLsvB9fQX098+tTzBqL2F/7z3dELCAwGYLtSdru5
         kridNolL6D4t5AkEqwYpLN8dzpzMQKYIJHJfEIChOpO2/DEgQ7IH0CsufC6uj1YwgShZ
         uiuiENOIIy6+AqkIHn0uQ3VnZdVew97Z7iIG3LWGY+lI3QPMpxcAAeQhhAw18eeInNAX
         TRc07E83drgZt83iyoeenvKjRrqfNHG9hKt9Bs3d6HV7LXc5yeJv09ILGPSFrny/pz8K
         Uhbt8Az4OfBZ7B92pDavCskIoZwLGZaU4OCOOEYm4HzZgzLSa7DveStBBUg/Hq0436F+
         CmQw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANoB5pn84as0iWVRDQj5YenO62oEsmiIfMsBIGXsRdLiXVyGcJX8+Ijq
	NBuzZytLlCMBghXVLVPtUHc=
X-Google-Smtp-Source: AA0mqf6LqDi4mbh8g7ET8QvPI01JRv1hE8YxfvZMHpFBuT2tWOaDWTzXn7yLlv/sOAG7DutGp1ByLA==
X-Received: by 2002:a05:6870:2c97:b0:143:2343:69d0 with SMTP id oh23-20020a0568702c9700b00143234369d0mr3905021oab.229.1669242689618;
        Wed, 23 Nov 2022 14:31:29 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:aca:2111:0:b0:35a:f69:4b04 with SMTP id 17-20020aca2111000000b0035a0f694b04ls10941oiz.6.-pod-prod-gmail;
 Wed, 23 Nov 2022 14:31:28 -0800 (PST)
X-Received: by 2002:a05:6808:201a:b0:35a:33c7:5add with SMTP id q26-20020a056808201a00b0035a33c75addmr5274891oiw.93.1669242688469;
        Wed, 23 Nov 2022 14:31:28 -0800 (PST)
Received: by 2002:aca:e0d4:0:b0:359:bd85:bbd0 with SMTP id 5614622812f47-35b343d32fcmsb6e;
        Mon, 21 Nov 2022 13:43:33 -0800 (PST)
X-Received: by 2002:a17:90a:bf17:b0:213:587b:8a83 with SMTP id c23-20020a17090abf1700b00213587b8a83mr11996133pjs.22.1669067013077;
        Mon, 21 Nov 2022 13:43:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1669067013; cv=none;
        d=google.com; s=arc-20160816;
        b=fl+jfnalSc60c5/XXgNNup7KaWvNZxB6iOTBcT0sB9SJISCcXqulHkF2L/7dJA78dP
         kjPLMiLsPqU52KJ3l/AqwWU+Y/XPbIWw3SrV5i0oF0LP18uYEDRS72LHxnhgoZ6wPLq0
         +fwgubCnfqNwdW/UG2mxG9sWNVE++zFj0IBOOjoV10RarCg2wfd1REfnp9QnFywPLied
         TKggl1UPv7O7Lro+BfvREwqQKC6S8j2DFwHySiqN1z62TxBji86REZ68w+QEELVk5JE3
         JAe4DrpL98ngMq6uxeqtDAgeQ/R3y4K2qPgs0mqZmrIArAIVm1wCZdism7+gx3O2BLed
         LsKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=ImVe+g+b+10JJjRyFbVg3VQDLgN59Ue/Abv7vaFmseQ=;
        b=pmEiypJxoEM+CARDqA7C536BhaqO+fy5xk9s5OnmgY1Lak15wwiybsosX12zFAlBHx
         LiBwAZ2A/UiyIH2WVx9/aj5p6nk02YSgr8wTy/ctTYO6I/XWPUsXqmYEu1o7nQEMA2wh
         DjTIIvpIQCgEnIHeRBheypg7Dnf51xhJyYxIWqpTHbzvHnnFMS8WHa1Y0qVHJDmLwJGz
         TItnksLiNlgzE3sORzJhXPlC54tyXLVpi6a6lIsdL+gH0FHfxmZf7/sOOfXkd9Q81Hte
         o2hgvLb65hieaPMvpJvurT9iy/sjePRemUYUpArILxQSSX14dGNEXMfoZu9bbJNHkaPo
         6l4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=google header.b=OHO4FjaP;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail-io1-xd31.google.com (mail-io1-xd31.google.com. [2607:f8b0:4864:20::d31])
        by gmr-mx.google.com with ESMTPS id o11-20020a170902d4cb00b00186b3b9870fsi807580plg.11.2022.11.21.13.43.33
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 13:43:33 -0800 (PST)
Received-SPF: pass (google.com: domain of skhan@linuxfoundation.org designates 2607:f8b0:4864:20::d31 as permitted sender) client-ip=2607:f8b0:4864:20::d31;
Received: by mail-io1-xd31.google.com with SMTP id e189so9653650iof.1
        for <open-iscsi@googlegroups.com>; Mon, 21 Nov 2022 13:43:32 -0800 (PST)
X-Received: by 2002:a5d:9c0d:0:b0:6de:e346:27d4 with SMTP id 13-20020a5d9c0d000000b006dee34627d4mr639526ioe.138.1669067012402;
        Mon, 21 Nov 2022 13:43:32 -0800 (PST)
Received: from [192.168.1.128] ([38.15.45.1])
        by smtp.gmail.com with ESMTPSA id p5-20020a92c105000000b00302a7165d9bsm3672008ile.53.2022.11.21.13.43.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 13:43:31 -0800 (PST)
Message-ID: <26d98c8f-372b-b9c8-c29f-096cddaff149@linuxfoundation.org>
Date: Mon, 21 Nov 2022 14:43:29 -0700
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
 <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
From: Shuah Khan <skhan@linuxfoundation.org>
In-Reply-To: <4585e331-03ad-959f-e715-29af15f63712@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: skhan@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=google header.b=OHO4FjaP;
       spf=pass (google.com: domain of skhan@linuxfoundation.org designates
 2607:f8b0:4864:20::d31 as permitted sender) smtp.mailfrom=skhan@linuxfoundation.org;
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

On 11/21/22 14:40, Shuah Khan wrote:
> On 11/21/22 07:34, Benjamin Coddington wrote:
>> On 21 Nov 2022, at 8:56, David Howells wrote:
>>
>>> Benjamin Coddington <bcodding@redhat.com> wrote:
>>>
>>>> Since moving to memalloc_nofs_save/restore, SUNRPC has stopped setting the
>>>> GFP_NOIO flag on sk_allocation which the networking system uses to decide
>>>> when it is safe to use current->task_frag.
>>>
>>> Um, what's task_frag?
>>
>> Its a per-task page_frag used to coalesce small writes for networking -- see:
>>
>> 5640f7685831 net: use a per task frag allocator
>>
>> Ben
>>
>>
> 
> I am not seeing this in the mainline. Where can find this commit?
> 

Okay. I see this commit in the mainline. However, I don't see the
sk_use_task_frag in mainline.

thanks,
-- Shuah

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/26d98c8f-372b-b9c8-c29f-096cddaff149%40linuxfoundation.org.

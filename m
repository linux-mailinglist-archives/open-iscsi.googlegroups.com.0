Return-Path: <open-iscsi+bncBDH7XCOC4UIRBXXJWSMAMGQE226AKNY@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CC535A567F
	for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 23:51:30 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id e16-20020a17090301d000b00172fbf52e7dsf6871295plh.11
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Aug 2022 14:51:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1661809889; cv=pass;
        d=google.com; s=arc-20160816;
        b=S1sN/8038Lge62mExia2h9FbvbwH7vW97UKnl19RGCEMjKGPppDpmz6pK7Nyw+gHkb
         xzycgztxHVVxalhESG5nrv0CNdozg4OHk6KKXUwkl7qCqWqxuzrxlDwtMAgmF+Ryzz28
         VsKOTmMPf3jzgm9yJfIBBR4i+qH3QSZ24/gcn5Fr5NSqHj3DmyuI5cwdln8vs8+ArsjW
         Xca80t8+szb4Dh/6wkAgohqo/hP9mjEWeev9/wln54+WYawm0nM0HqD3GbC5muZVD7Dl
         B0D54cJuLOqVMnqzke8O5ycEQ8txoo4UOJFPbSsVFe7qp1Rf61+VJw8ORv2AMK5SFuU1
         uAfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=sC4x5jXZUuX1+Etwk2q8jV0pa9Of822mWX6wVBi8jxM=;
        b=LXnnOoPykNHzQx11+z1gqWoqJGw0mPYjxF/7C63572Ljo8P0F4Wzdbk6oP1QRJQmGD
         xQuRwwYiRmmykwB25cXBPGwilOXsP5ZBgeVUhpuYMthAx271w/73zQQVWwLFaqUA+TLH
         RZHx+cjLNYAZkQNz1EmSDWZYu9/SfQXlN/j7i79ikrtjvuMUEzS0hQNPNfGl8a1MUWw6
         5osNzD45m++H3AA1I2FxfeIs9lH3S5kX+3JKgs5RNCAHwAHVlpChwk6lQ9w/MmXAuHPI
         s73Yu1G32H+jhDJxTP29rrd2ZmRW0JKk6a18r/zv3a4hp5uqXvmtQuCTgKKjeP4dMTBF
         SuEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=TBTYAAbj;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:from:to:cc;
        bh=sC4x5jXZUuX1+Etwk2q8jV0pa9Of822mWX6wVBi8jxM=;
        b=m3VKJJYqiausG06ECrNjqgw0lmTxs01Td1MOV5HLploCrA70HYvW+SqLXXp2vhMHAo
         kG0gPc0uJaXGFH58gq25EtE1wJQqzsu2zTmttZ6dkw0WILmu2gqYO2DY0YwiOIfsZGdM
         IPPjZj0IUFpRX+gmNYJIpqvHbS2HqOfET9RU7Klea02qenmm0AY46mhKMk7ndSoeajoa
         xnzRg0gmJOSzEL5fxlejYR2raBLTAmYX16sm7zRRvZj8aaT0h4+U4MQs/5zkRhBGuu/H
         pRDMr1pfrq2DWnfbgaMkiAUOgmdzTEsbyQsGCgCbKW2bPmm9JgdAfNesQibstZI8fI9L
         vH8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc;
        bh=sC4x5jXZUuX1+Etwk2q8jV0pa9Of822mWX6wVBi8jxM=;
        b=llbzQsF4WlODg7Rfom+aAT7n2Zn9KV0e9rKO/QwGHxguPY3H5lCfVUwfHuA/7wcOx3
         2fJNqjXmD/MJ9v8cAZPl15HOaWxuBHKYNcg+GcJLv8m/aCRh1ux2AFkGZQSn+u7Z4tMY
         L/w10xy4PhICRug7JrG7kdFsqZNNZ6B+O5PF8wW8Uz+FKO33ujmDQ2EVN2uRIyz5F1Y0
         ySWBdVLeBm/6oDsLCro+JEDwmKnW67A1pnaPb8ZdTuF+vi7bHtLTwO7QV6V2MoLt1VRC
         RFgwu7z8U2K7838Z4fEFUzA8ZgdP1X64treUvYOFrQ/E4vSQWa2DpHm6m3rcsQxVVl8T
         hCsg==
X-Gm-Message-State: ACgBeo1FyaOCjobt764s6PWGbsnBFlVydkOyG66UfAGm8P8GFFLv2ehe
	4GMysEAnDRpAR9FQNmj1538=
X-Google-Smtp-Source: AA6agR60khOQ4lUDjH1ArNcbAKawM/gf2LMa7mvr61u+Pw6cyMKQNzttb+4JOdCY5zV2X9FAGMFgcg==
X-Received: by 2002:a63:8542:0:b0:42b:4c9a:97cd with SMTP id u63-20020a638542000000b0042b4c9a97cdmr15598012pgd.221.1661809888611;
        Mon, 29 Aug 2022 14:51:28 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a63:69c4:0:b0:41b:c89f:182f with SMTP id e187-20020a6369c4000000b0041bc89f182fls5020529pgc.10.-pod-prod-gmail;
 Mon, 29 Aug 2022 14:51:26 -0700 (PDT)
X-Received: by 2002:a63:5702:0:b0:42a:b77b:85b3 with SMTP id l2-20020a635702000000b0042ab77b85b3mr15064368pgb.263.1661809886093;
        Mon, 29 Aug 2022 14:51:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1661809886; cv=none;
        d=google.com; s=arc-20160816;
        b=zhMyTgfXe/r0k4X0Sk481Y4OI7kRbj9iPa2uulugw6cWvMgrX4EakdZogdYsXVF29z
         vZ+b+YFvB921nUNrguhFJ2YHR8Ctvep9rWbxkIWScOt7Zef9whhOy1rzSWu5SW5CYH84
         bTzyY1Rv3D3Ylc3QrOPspDLmsdfZ7Sh5UbC8zcmgKyLX9JaamwZ6n5slQMTd7aDYK0Ts
         hqnhhJL+h6fJlPdViaz/1s+KBSkWEyAvIfzpxBCIcMi+W5lstSr5jzKsSBuhSLowHG3N
         1JwRSjM3VowwUBMleJ10NFl77jayate0Im3uw5UL3lrFBpfUol816Fr593H9vSo7w6PN
         3y9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vjzDcnfDhIQiZr5VocsaQBAuRFWQq7cWft0Wa1VOFtQ=;
        b=GQc6yOOCCWL9Rx4M094/p/8PGV9wuhEhNFO6WNibdeDO9eVFIvJTU8bmvx/ZZyZkLx
         Szo3/ttgvbWSr+9sdvr0MstgOkUoOF+I7Vd/cRJB2g0bTaIfXDBd0YotY1dlqV1Lft+7
         KKd21cBRc6MGT2cQmMTVSKLKT1hzAwohyKIOXHvKAiqCi4AzdwcLHCdGrJ65GmHp9Xq/
         2Mrm+kh22DCI889BOnxJ0dkM6HelEKK0YRejKAzGi5wfDZYcq0e0TJm4EmbENqlhM4t3
         lygaXZsFkuSxn2j0uLSLUKZlQlGwAJbyBG9ehrkgH0MZ+pBiEbtl1r5ajirqTFEYdXog
         JGzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@purestorage.com header.s=google header.b=TBTYAAbj;
       spf=pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com. [2607:f8b0:4864:20::1031])
        by gmr-mx.google.com with ESMTPS id v12-20020a637a0c000000b0042b329f2ff5si19837pgc.0.2022.08.29.14.51.26
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Aug 2022 14:51:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ushankar@purestorage.com designates 2607:f8b0:4864:20::1031 as permitted sender) client-ip=2607:f8b0:4864:20::1031;
Received: by mail-pj1-x1031.google.com with SMTP id n65-20020a17090a5ac700b001fbb4fad865so9967188pji.1
        for <open-iscsi@googlegroups.com>; Mon, 29 Aug 2022 14:51:26 -0700 (PDT)
X-Received: by 2002:a17:902:f68f:b0:172:ff8a:90d4 with SMTP id l15-20020a170902f68f00b00172ff8a90d4mr18107973plg.2.1661809885716;
        Mon, 29 Aug 2022 14:51:25 -0700 (PDT)
Received: from dev-ushankar.dev.purestorage.com ([2620:125:9007:640:7:70:36:0])
        by smtp.gmail.com with ESMTPSA id d17-20020a170902aa9100b00172d0c7edf4sm8039676plr.106.2022.08.29.14.51.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 14:51:25 -0700 (PDT)
Date: Mon, 29 Aug 2022 15:51:22 -0600
From: "'Uday Shankar' via open-iscsi" <open-iscsi@googlegroups.com>
To: Mike Christie <michael.christie@oracle.com>
Cc: "open-iscsi@googlegroups.com" <open-iscsi@googlegroups.com>,
	Lee Duncan <lduncan@suse.com>, Chris Leech <cleech@redhat.com>
Subject: Re: [PATCH] recovery: remove onlining of devices via sysfs
Message-ID: <20220829215122.GA546808@dev-ushankar.dev.purestorage.com>
References: <20220811234028.3848279-1-ushankar@purestorage.com>
 <20220823213226.GA2605053@dev-ushankar.dev.purestorage.com>
 <DM5PR10MB14666AEF8ED8B55B35310917F1739@DM5PR10MB1466.namprd10.prod.outlook.com>
 <20220829200008.GA442899@dev-ushankar.dev.purestorage.com>
 <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <644defe5-2a33-9eda-ff7f-f600e635a48b@oracle.com>
X-Original-Sender: ushankar@purestorage.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@purestorage.com header.s=google header.b=TBTYAAbj;       spf=pass
 (google.com: domain of ushankar@purestorage.com designates
 2607:f8b0:4864:20::1031 as permitted sender) smtp.mailfrom=ushankar@purestorage.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=purestorage.com
X-Original-From: Uday Shankar <ushankar@purestorage.com>
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

> So we could just add a CAP_SCSI_EH_TRANSPORT OFFLINE flag to
> the iscsi_transport->caps struct. When userspace sees that then
> it knows the kernel will now do the right thing.
> 
> The drawback is that we have to patch userspace and then also
> get the the new CAP_SCSI_EH_TRANSPORT_OFFLINE patch in the stable
> kernels.

Another drawback of this approach is that we are covering up a bug in
the kernel, which is still possible to hit if someone/something besides
iscsid decides to write to the sysfs state field at the unlucky timing.
Not sure how much we care about this. If it's considered a non-issue,
then I'll put together the change you described and send it to
linux-scsi as well.

Thanks,
Uday

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/20220829215122.GA546808%40dev-ushankar.dev.purestorage.com.

Return-Path: <open-iscsi+bncBDLPRE656MLBBVUH4X5QKGQEUIWCV2Q@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 22E3428286D
	for <lists+open-iscsi@lfdr.de>; Sun,  4 Oct 2020 05:39:03 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id 47sf190923wrc.19
        for <lists+open-iscsi@lfdr.de>; Sat, 03 Oct 2020 20:39:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601782742; cv=pass;
        d=google.com; s=arc-20160816;
        b=MhnXQSp5Or/fIV+p90VPIHnst35LBdLoXEBbzvZOS2o4bv4CycBccJUbQCqcZt8rLU
         HNnpRVeEMshV2vKli0+sQQ9WgD+gzMtzagUj3yeeXTCAhXr5GI7NFBxqHOFFJWOVCH7V
         pF8iHWuUp1b3IOzTE09uVUmLv543xeml7eCvkGgkMEGXW7ghYZ/T6qoBntqLbEimYEs8
         wVNDJP2Cn7j8WH5rwFd2NQ1lIVaZY5in8uMSmrAhM0BfObMIFY4ZHSD7VpfFsd32DzzL
         SCu3VAkIADQxsPUhaxnhnO/0eLdPSOCdpdGLuXFImqS1wMhdvheYXmgP93fwK8byi7p8
         J5DQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:autocrypt:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=srmT4D6dYsNo1EavJBPp5ZnePYSXxbh7S7lgjc+s7SI=;
        b=Eet51hHL6RiCS9a+jeXsCqVamt4iWuB3zgJp4XrcyF55/kBMz2LEkTD72+vb2T+VWH
         F/R4L6nVhb89+HlHfuo5TWpuemz8jBE7QaP7hbJjn5cXPCYon5B3VM8w/rSJWCg0PPvq
         DDDBopuUsEYFWTjE4zgOE4e1KHIN8lVPg9sKQ9WobUUhwCA0iQnXRZ+Nzij3gzoK0teF
         6h5w7UuaPciLf+nsDZi6TCrM2ZWiEfn/QKl1NKNk2eqeCy/W56bLn14NSSOgI5sPEyOs
         OjClvhxu70+907z9FKELBqodCxc7uanYf9U1W85KWLiFcQzLLF0H8q7p+doGfgTAO1Yg
         tjTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=srmT4D6dYsNo1EavJBPp5ZnePYSXxbh7S7lgjc+s7SI=;
        b=a5goosIo0yeFJtAJa2vgw9CSvMkLtQohydsZY6P4Pap6Qcrkj3GNkOWZeSIdO1ID0+
         kQJ53aV12RClm4uwHJN7e4dfPKTdMmAvZ8UvpXuesopzHm/ImFUiTCsUP90nMUSu0RDv
         VXp8tQTC7LcoeSBfzIc1KI3W6Lauo1/wKlQofZ4VhCYHBbnD6t5j+HdzO+FKT5hkfpbF
         TVOL/q+4iVBO717HhhbCY6XzmHqJsRIfI4SSNLAwrmgwP2cg4WafqkLlNyWMsQMLWtyt
         N/TDWGJn+DcYq2j0yfazJgIw5hXQK618SIkdoo5I7OI7gJhkLPStkDuV23piyD9lNAow
         pCkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=srmT4D6dYsNo1EavJBPp5ZnePYSXxbh7S7lgjc+s7SI=;
        b=Xr3rbHQq87Wfz5Gm1TjnaT4kLlfj47J+g5Z/aHYzVk+sYnfL7C6v+C9Wsia3R+4YFh
         yRxe6TjGcKFeUZVaxuKqmn1fUBiuXIAs5uBjz6nbayjT9Ep+2QXhoPk1w0ZtCaC4mfgJ
         V0FnRBMDUxYuXbchPKOyA6OptfFBrzaPTUp8XKjehpIzEtF9Uzb7glEL+miMC8HkZiLU
         aRtwoeHV4ULfbh7QFi0ZF2pnPyJBoUkHCjYKhLhWuHEsqhSYs3PeIMcPqpxGpQec0tco
         2cIffiahS/XlnD7pTrlCVrF6FwjqOgTioTf4XLxtWTlPC8FEWv1iffXRX6Ot/pSyR1Ta
         8f2w==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533UZ5MVhi2ji3sJlqfdI8EDFzNxde77mLWOjl95f7efTbqNLUKW
	TaGDa0lkBKj9JJ/YUJso254=
X-Google-Smtp-Source: ABdhPJx8ZD6RjKlFjUi1Jss/P0POWVIj0XkyE4equSbrJFQde+ypwdINitVtbvsrhJcdKnLSgqZh3Q==
X-Received: by 2002:adf:e312:: with SMTP id b18mr11336406wrj.372.1601782742780;
        Sat, 03 Oct 2020 20:39:02 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a1c:98d8:: with SMTP id a207ls2815515wme.2.canary-gmail;
 Sat, 03 Oct 2020 20:39:01 -0700 (PDT)
X-Received: by 2002:a1c:4b0f:: with SMTP id y15mr10556979wma.165.1601782741786;
        Sat, 03 Oct 2020 20:39:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601782741; cv=none;
        d=google.com; s=arc-20160816;
        b=XOAPD/Rp8id+oa+BcqEQkryL0rbo1mMCZEU9eqYg5x32+MYkEFIE/I4P9uSZZp96BA
         PIrDRBEYEKUQG42M7y/1PDLL99EizahiNy5MY7LFtGIub6atxcwzl8uTG02v+52OxDwE
         6hyHBUVbgSHWYa1lOrxIneTU+jvFjv0bximUkQbgvaB2hDTuUP/yhJ2yeEOZq0y5X0gs
         KuVObaFCyqzcyCuw1JHbRarQ1C1EqdhS30jy9MbQ9xxNxCPmA+KkqDG9thOayThrqEah
         jU9qBNVrBFrr4OID+vV/68Nvw34qWkODJQXhfc3imIGlNZQT9qLpfqJ5vRp2Ei4xONbZ
         Mbig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=wZyGK9b2eGTL4YQCmiMk1cgxzsVxV0pW43YPL73i5yk=;
        b=PnU4en7cm5Hcm1FRG8gE3HS0YwAqazSZgF1kCTPhVUwzymobh/QaPmSetUX+ilVs0n
         duJ4Zj5zctW/Vf9Kxk5wkPeNMJ0tfOxU33V4uorVCGnbgTodt4z2w3gSbZA7V4KNQcKF
         OFr56g90ib+73LvjFnadtdiOuZENVd+PEJuXmnmUFDOvHJTGUKk9+Py/uav3i2j8HRYK
         WIKqRVbYGvXyHLtA8B7bHUg9fo9etgWpJg7tgLyGGZkFQ3oBe+Bw5ERb7Wu0sq6qPlam
         2FBLXPWGtmsqbS1F0Af/Wg22na181pWSo4s2zx33NNrcY+VtaZ4NMKB9honm/D80Qndf
         6eNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=colyli@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id w206si148320wmb.2.2020.10.03.20.39.01
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2020 20:39:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 491A0AC54;
	Sun,  4 Oct 2020 03:39:01 +0000 (UTC)
Subject: Re: [PATCH v10 0/7] Introduce sendpage_ok() to detect misused
 sendpage in network related drivers
To: David Miller <davem@davemloft.net>
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org,
 netdev@vger.kernel.org, open-iscsi@googlegroups.com,
 linux-scsi@vger.kernel.org, ceph-devel@vger.kernel.org,
 linux-kernel@vger.kernel.org, chaitanya.kulkarni@wdc.com, cleech@redhat.com,
 hch@lst.de, amwang@redhat.com, eric.dumazet@gmail.com, hare@suse.de,
 idryomov@gmail.com, jack@suse.com, jlayton@kernel.org, axboe@kernel.dk,
 lduncan@suse.com, michaelc@cs.wisc.edu, mskorzhinskiy@solarflare.com,
 philipp.reisner@linbit.com, sagi@grimberg.me, vvs@virtuozzo.com,
 vbabka@suse.com
References: <20201002082734.13925-1-colyli@suse.de>
 <20201002.152829.1002796270145913943.davem@davemloft.net>
From: Coly Li <colyli@suse.de>
Autocrypt: addr=colyli@suse.de; keydata=
 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
Message-ID: <e4482d6a-ee44-04e4-42d0-bb9ab6fc23c7@suse.de>
Date: Sun, 4 Oct 2020 11:38:49 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <20201002.152829.1002796270145913943.davem@davemloft.net>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: colyli@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of colyli@suse.de designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=colyli@suse.de
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

On 2020/10/3 06:28, David Miller wrote:
> From: Coly Li <colyli@suse.de>
> Date: Fri,  2 Oct 2020 16:27:27 +0800
> 
>> As Sagi Grimberg suggested, the original fix is refind to a more common
>> inline routine:
>>     static inline bool sendpage_ok(struct page *page)
>>     {
>>         return  (!PageSlab(page) && page_count(page) >= 1);
>>     }
>> If sendpage_ok() returns true, the checking page can be handled by the
>> concrete zero-copy sendpage method in network layer.
> 
> Series applied.
> 
>> The v10 series has 7 patches, fixes a WARN_ONCE() usage from v9 series,
>  ...
> 
> I still haven't heard from you how such a fundamental build failure
> was even possible.
> 

Hi David,

Here is the detail steps how I leaked this uncompleted patch to you,
1) Add WARN_ONCE() as WARN_ON() to kernel_sendpage(). Maybe I was still
hesitating when I typed WARN_ONCE() on keyboard.
2) Generate the patches, prepare to post
3) Hmm, compiling failed, oh it is WARN_ONCE(). Yeah, WARN_ONCE() might
be more informative and better.
4) Modify to use WARN_ONCE() and compile and try, looks fine.
5) Re-generate the patches to overwrite the previous ones.
6) Post the patches.

The missing part was, before I post the patches, I should do rebase and
commit the change, but (interrupted by other stuffs) it skipped in my
mind. Although I regenerated the series but the change was not included.
The result was, uncompleted patch posted and the second-half change
still stayed in my local file.


> If the v9 patch series did not even compile, how in the world did you
> perform functional testing of these changes?
> 

Only 0002-net-add-WARN_ONCE-in-kernel_sendpage-for-improper-ze.patch was
tested in v9 series, other tests were done in previous versions.

> Please explain this to me, instead of just quietly fixing it and
> posting an updated series.


And not all the patches in the series were tested. Here is the testing
coverage of the series:

The following ones were tested and verified to break nothing and avoid
the mm corruption and panic,
0001-net-introduce-helper-sendpage_ok-in-include-linux-ne.patch
0002-net-add-WARN_ONCE-in-kernel_sendpage-for-improper-ze.patch
0003-nvme-tcp-check-page-by-sendpage_ok-before-calling-ke.patch
0006-scsi-libiscsi-use-sendpage_ok-in-iscsi_tcp_segment_m.patch

The following ones were not tested, due to complicated environment setup,
0005-drbd-code-cleanup-by-using-sendpage_ok-to-check-page.patch
0007-libceph-use-sendpage_ok-in-ceph_tcp_sendpage.patch

This patch I didn't explicitly test, due to lack of knowledge to modify
network code to trigger a buggy condition. It just went with other
tested patches,
0004-tcp-use-sendpage_ok-to-detect-misused-.sendpage.patch


Back to the built failure, I don't have excuse for leaking this
uncompleted version to you. Of cause I will try to avoid to
inefficiently occupy maintainer's time by such silly mess up.

Thanks for your review and the thorough maintenance.

Coly Li

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/e4482d6a-ee44-04e4-42d0-bb9ab6fc23c7%40suse.de.

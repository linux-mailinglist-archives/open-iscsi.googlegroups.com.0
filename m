Return-Path: <open-iscsi+bncBDO7B5X3UIBBBY7G37WQKGQE4BLMJCQ@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C6E82F5
	for <lists+open-iscsi@lfdr.de>; Tue, 29 Oct 2019 09:08:03 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id u3sf8136145edp.19
        for <lists+open-iscsi@lfdr.de>; Tue, 29 Oct 2019 01:08:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572336483; cv=pass;
        d=google.com; s=arc-20160816;
        b=MP46YSbnNGhihjXyMDLFlzZQEB4Nt4uIJAoJ2pR2Fbw5pW50pNGu2HygfBwWBJxEDt
         QQo14txz+pVm/P7n37UPhKkxoouSeMO1cgFkYbBxtb46rq9Y5qf83xkJq9cy3rveFtqS
         nFcHFn/nI0eFlaVfg4l7wN/dkY4ohebEfbpfyEQfG7FCfrDhuAi8dS7oxqRcvLmSFfF7
         7i747zZsufOU4AbIS2MGCsW8eLx9F5BuOBi+V4vQ+c3nddCbsd9wCawEXK+1gS4GiIyl
         z4BkykukgS10TsV1cbflF4Cr1Sj9Cz1qdr0oLajw7n22Wa30B7WiBRh4a9OEfq9OYjOR
         cdew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=U/zE7azwFJNryFdGkfEiWSAHKz61wDgMVPLqiIr2cEo=;
        b=KlAxxmW17HkcfdkE+ZdfwY4bBerxmnq5Ne2g4S4fK4JE0U0vtk6OUerZmSTIcHgtkO
         k8BXIYUWpcRLu8CBzoDFcBtrxoie+YqW6YXjcUMBO8Rn0jyDgnGGPZbgy1XUQ0kYKXAA
         Q5JMOQHg4TxmDGGegM8xf6hKOUA4j4++TgiFi4LsBaj8+UxWQ3tULvTpnx4FikGUQ1n7
         +nl2+sWGwKxy/oK30V0KxmOxRQWX28/iEq0inembQ6OdwNrzPtk2AshA6hu/2UjXALM3
         h/s5UBB9wZcJChmu5N18hItleOKilzm61/3Wqt3UeOajJ0A5wmYXltV0GsEz3r8Kw9AK
         bFOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U/zE7azwFJNryFdGkfEiWSAHKz61wDgMVPLqiIr2cEo=;
        b=WJD9FESeQojWg1J7VXsivHF0DipHu+Iz5CZX4J4lXR7BfTHk/Y0cpOu4o6/up2ZiCr
         Zg+tvaVtt3roep9WbgFYdJk47mLolL/21/kJw5yuih4wM6masyTKgedKi8Z4L5pu1kHc
         0rO/HYCduZxRbLq9N8bbnBSvlwmRhiC4PcLO8/W4ZgB8CHoqS4+7WXEeFyCLnXmUODpd
         boP0qqi9DV0IpNJ9DMq2n5fgcHW8mas0gEiFwC8C25PUSvAl+7OXeZhgC8ysgEGYCKtY
         j5FRVN/b6aiGgyw00IKxgpHMbBYthVeLKL+/6tCoqP1INcT0xx+uPDM7NW6hgRZ7Onbw
         VZGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=U/zE7azwFJNryFdGkfEiWSAHKz61wDgMVPLqiIr2cEo=;
        b=LV/UnHNU/I/Ua7Nt6lpw6G3OPi1ewo4YWsXpYRAT+e4ynG9hhz8ZK9mjDEpWSP0eJS
         4YUs3QuwbmVnlnhfDbPjUHBOuCCQJzSvea8hbhdvXKO6wCUxU0lyTirE89XX9VWvvRTL
         G6lg+XOSgM+pEAYF+vqmsjxDQ6w8Q7t4sydoK5ZKbAc9ZRKIRBl25zGuA7VOAURhz4Ft
         KjLRkJuSTWvxuNxmH2y36BargGqvoWdPc/O5T8oc26vnUfYmmSzpVv/mH+aCKodzK9Q8
         5hMJOudGgVIcZFnhN1iQGJ+osRvRsgl2qs36Vhz0ArUGz0KWT3/qsueqzdMziDvuqBPm
         5HIw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAURls6dugRtunDa+uXCDz0QLWxAL6ImKff3tHJ0oEiyl1tIbsRv
	UcVi+PUs984STbWfv05F7+A=
X-Google-Smtp-Source: APXvYqwvWYY6J1sRnbomD2OeMnocXi9SvigkvvnOapi9YM71V3k5ov7/G9FpsK7dME8VMxnumUtoTg==
X-Received: by 2002:a17:906:f1d9:: with SMTP id gx25mr1935467ejb.156.1572336483419;
        Tue, 29 Oct 2019 01:08:03 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:3b48:: with SMTP id h8ls3099762ejf.3.gmail; Tue, 29
 Oct 2019 01:08:02 -0700 (PDT)
X-Received: by 2002:a17:906:7257:: with SMTP id n23mr1976015ejk.132.1572336482816;
        Tue, 29 Oct 2019 01:08:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572336482; cv=none;
        d=google.com; s=arc-20160816;
        b=zDI6+xdCqA3ycH7QkGFovmMZHAApZpEylbYTLTV5gFwyeFf7slazwGTFdFudISg8hw
         WYMTJIIBwpn1T5DsTSgUn9b4C286pVxk+r1/GCiR/rEYqIXE4a4C/jguxTad+xLjb6XQ
         NjFwucc6Ta9z9iZqJ8DeyH0kFNnsAHmDln30z0QnpR0WDr5Z4m0jMkhU3Ud/BBJMRb25
         PxrA7DgtmyDvJowZhILW9f0gMJ3ezUPsHvTV20caqRHaiZCU3gd7IrHXeZBINAxd+zAV
         Ffr+4eGOmFj2U/LdmJnAKnIwMbMYcBE671Q8lnwDA5fuumDdhW7thRrb6/ZMiFfSBBkm
         w+AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=lyAyJRkpigONUPDASaHcWHqOXAyQ9OWX6Q5/fY2LZwA=;
        b=FqLYNUyzpiD4A+SAjGchCQZElNJ4sIwe6/aql6K4PoR2J8Qw4a4Wny9+aqYe4/t2bw
         tK/Q0Mv5fg+SqPjgO0t9e8lfG5a1stQDk/6QNO+GN/pxIc/KwA2NF+LZFxNJ0B0j5uc3
         RkQ19EdOlqgAQ5K1pFZX72AriHA3fkuYgIB6xbPJSVTBlNoKV2BN6VmN8yg+SBXtWvPo
         u26oV3kll+Tv8xdMQ+8755TWyLfe1i2CeSEtE/y3SEAEfVP09m4o1fUjcwkvk+ItmOZ3
         L4nl/VwrCtZeUz+yMrf7rIkDElxNsWJ6qQ4ErbzqkligvMdtgnXp6CCMDCWgmGP9yvVt
         kifw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id y21si494651ejp.1.2019.10.29.01.08.02
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:08:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from DGGEML402-HUB.china.huawei.com (unknown [172.30.72.57])
	by Forcepoint Email with ESMTP id 25E316BDF6AE21D87397;
	Tue, 29 Oct 2019 16:07:59 +0800 (CST)
Received: from DGGEML421-HUB.china.huawei.com (10.1.199.38) by
 DGGEML402-HUB.china.huawei.com (10.3.17.38) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 29 Oct 2019 16:07:57 +0800
Received: from DGGEML505-MBS.china.huawei.com ([169.254.11.138]) by
 dggeml421-hub.china.huawei.com ([10.1.199.38]) with mapi id 14.03.0439.000;
 Tue, 29 Oct 2019 16:07:51 +0800
From: "wubo (T)" <wubo40@huawei.com>
To: Lee Duncan <LDuncan@suse.com>, "cleech@redhat.com" <cleech@redhat.com>,
	"jejb@linux.ibm.com" <jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
CC: Mingfangsen <mingfangsen@huawei.com>, "liuzhiqiang (I)"
	<liuzhiqiang26@huawei.com>
Subject: =?utf-8?B?562U5aSNOiBbUEFUQ0hdIHNjc2k6IGF2b2lkIHBvdGVudGlhbCBkZWFkbG9v?=
 =?utf-8?B?cCBpbiBpc2NzaV9pZl9yeCBmdW5j?=
Thread-Topic: [PATCH] scsi: avoid potential deadloop in iscsi_if_rx func
Thread-Index: AdWL2reJ1uh470cQT+idNsWy+95OAQB3236AAByqm6A=
Date: Tue, 29 Oct 2019 08:07:49 +0000
Message-ID: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DF66B3@dggeml505-mbs.china.huawei.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DE9E71@DGGEML525-MBS.china.huawei.com>
 <92b221da-18a8-8b7b-0436-ca59088fd45b@suse.com>
In-Reply-To: <92b221da-18a8-8b7b-0436-ca59088fd45b@suse.com>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.173.221.252]
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.187 as
 permitted sender) smtp.mailfrom=wubo40@huawei.com
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

On 2019/10/29 2:04, Lee Duncan wrote:
> On 10/26/19 1:55 AM, wubo (T) wrote:
>> From: Bo Wu <wubo40@huawei.com>
>>
>> In iscsi_if_rx func, after receiving one request through 
>> iscsi_if_recv_msg func,iscsi_if_send_reply will be called to try to 
>> reply the request in do-loop. If the return of iscsi_if_send_reply 
>> func fails all the time, one deadloop will occur.
>>
>> Signed-off-by: Bo Wu <wubo40@huawei.com>
>> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
>> ---
>>  drivers/scsi/scsi_transport_iscsi.c | 6 ++++++
>>  1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/scsi/scsi_transport_iscsi.c 
>> b/drivers/scsi/scsi_transport_iscsi.c
>> index 417b868d8735..f377bfed6b0c 100644
>> --- a/drivers/scsi/scsi_transport_iscsi.c
>> +++ b/drivers/scsi/scsi_transport_iscsi.c
>> @@ -24,6 +24,8 @@
>>  
>>  #define ISCSI_TRANSPORT_VERSION "2.0-870"
>>  
>> +#define ISCSI_SEND_MAX_ALLOWED     10
>> +
>>  #define CREATE_TRACE_POINTS
>>  #include <trace/events/iscsi.h>
>>  
>> @@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
>>  		struct nlmsghdr	*nlh;
>>  		struct iscsi_uevent *ev;
>>  		uint32_t group;
>> +		int retries = ISCSI_SEND_MAX_ALLOWED;
>>  
>>  		nlh = nlmsg_hdr(skb);
>>  		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) || @@ -3710,8 
>> +3713,11 @@ iscsi_if_rx(struct sk_buff *skb)
>>  				break;
>>  			if (ev->type == ISCSI_UEVENT_GET_CHAP && !err)
>>  				break;
>> +			if (retries <= 0)
>> +				break;
>>  			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
>>  						  ev, sizeof(*ev));
>> +			retries--;
>>  		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
>>  		skb_pull(skb, rlen);
>>  	}
>>
> 
> You could have used "if (--retries < 0)" (or some variation thereof) 
> but that may not be as clear, and certainly is only a nit. So I'm fine 
> with that.
> 

Thanks for your suggestion, I will modify it in v2 patch.

> But I would like to see some sort of error or even debug kernel 
> message if we time out waiting to receive a response. Otherwise, how 
> will some human diagnose this problem?
>

You are right, I will add some sort of error or debug kernel message in the v2 patch.

Thanks,
Bo Wu

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DF66B3%40dggeml505-mbs.china.huawei.com.

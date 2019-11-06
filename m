Return-Path: <open-iscsi+bncBAABBTETSPXAKGQEN75QDYA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc3c.google.com (mail-yw1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 86B2CF3DA0
	for <lists+open-iscsi@lfdr.de>; Fri,  8 Nov 2019 02:50:06 +0100 (CET)
Received: by mail-yw1-xc3c.google.com with SMTP id g69sf3480303ywb.2
        for <lists+open-iscsi@lfdr.de>; Thu, 07 Nov 2019 17:50:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573177805; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlF4lbz6N/KieTEN7hFfSrkDXq8/YtG46L5LCyLLCHpvQIDag/PIdwK3CBRgWCV/gL
         wLBuUcItRVM/B95RRvO6oxTgNtRgBQAbU+rUjA2GgKimv3GY+Fj7Wg/+ciOuNCDz4T/O
         krU1CpMOtW+BuKoE97TclWnuEar1Zo47aS3DP/6ZLLnO2vgCbwT2rEG5hmL1DaZZ9mc1
         mLgZjKIv9RP2jzkgR/gHzzSfOQ1zC78vHHrfAV4oy+c3OoT+TY/g8rhwV9so+jX08dB9
         KSVtLEVrdV2hmBAUq45zeeCEO/0/JGdKcV26Wh0Lb4yVVoKyk6i/SoWN/X5D0UQmrIEs
         +bFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=BSmV3NN7NZrnviXQV722YOPuk8zTYq4kvhlqGXS1dn4=;
        b=kLMKlgBUDqLjLLcKurh+h0zRVBlPvoTbhmvP7BEHTxr4a6eqwcyaoGnOHYvTKwLOXK
         cZADikyJBEAH0txhqh2RIjDv21JvXGUlP2YnZZKf/Mz8pV5hWF+keKehE8p5YF+QtBFY
         TOnv0tJ3SD+bLf9iufp479uoCimaN1eBKo8dzUd5eK1Upkebe2eV9VtzFv//DInx1spS
         O9oQCZWpUcu5dHYwdthqE5c9ajcKkPSpiBr/0DnFqoG1mJdD1elf++Mi+1etiGhVMv71
         3AuBvlqh4byWp3WBwP9yd+fwnhD4GX3BgqTAliIQBMLSMeP0Lbcp7ORjTjYAgqaZP4Bs
         ZUbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BSmV3NN7NZrnviXQV722YOPuk8zTYq4kvhlqGXS1dn4=;
        b=l2BRZ0wuY3m6OiEcobCqkH9f16m4kmfxGZ/i8THdypqJCjhZnQGUysIkivn2BYhrDp
         vTnlrq6PAVsgiudSGFuyMW07//TFz8xtvb8IpNPGwLT0bppoZA99/YzLYV6bhxYeUVIW
         qKSgpRRIqGV63TyXDtYJ4EJQyffvdc3QsHwvk0VHTh9tIaGhTV0mvGgJ2U6557CquzNW
         8ibKzwJv8hcIGNtsAS5Rp7qzyzH9MLyVgCgT6mNdeIlZ5oKvlUTCusIs6sbV+99gHYhg
         +oXNbZSsKsw+ivBNkh4A9R33PxiPn1ffNZ2/wHVxE3O9mgutwoURI0besYGL6zEhtRr9
         mDlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=BSmV3NN7NZrnviXQV722YOPuk8zTYq4kvhlqGXS1dn4=;
        b=iHhUSU1nK5ABZScYmIeWTObJUuRchQjRQG4vPNZx1EOgmX0kfR2+z3SJ+e0DCl5BLx
         IdBsjt+lrYbZCACSYLxzZPaiuz3mDSyN0k4COrr2YP52jZqxE30WTA1fdhOm3OnvMr9g
         07rmovvX9isnfoom6mi7bqZL+GEepkveVh66r6zKfDXwIZR/reOiXmrB0T3UYHAelvnK
         Qq7Pu4aPVZLyFIj6KECdLJ3axTiLz4JhWZOA2djZ0PQmz3wb7QY60mwfIELfOOqqLed1
         ticxZHjgKHMBcPcNzjnMNHOl/eo3HnLRnmZ3Jy64l8q7jnUFYKncKmoyI+9ye6k05sc5
         i/KA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAVpwQMi8dxrDolWvI1CFr1UAfBfP2UOIIB1QYXAybYJ6sj2n5UC
	4DZY4J9mYM70HF72C5NP0Rc=
X-Google-Smtp-Source: APXvYqxp8pPOmf784Q0qg5Y1TGUJUm6EH+bOmdnqOJHUGB4ewYH9cuAAy//coBI6hY/AQiUb629xpQ==
X-Received: by 2002:a25:c9c6:: with SMTP id z189mr6540518ybf.389.1573177805044;
        Thu, 07 Nov 2019 17:50:05 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a81:9ac2:: with SMTP id r185ls577877ywg.10.gmail; Thu, 07
 Nov 2019 17:50:04 -0800 (PST)
X-Received: by 2002:a81:3341:: with SMTP id z62mr5067829ywz.242.1573177804790;
        Thu, 07 Nov 2019 17:50:04 -0800 (PST)
Received: by 2002:a0d:cac7:0:0:0:0:0 with SMTP id m190msywd;
        Tue, 5 Nov 2019 17:09:09 -0800 (PST)
X-Received: by 2002:a25:ca17:: with SMTP id a23mr72606ybg.385.1573002548862;
        Tue, 05 Nov 2019 17:09:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573002548; cv=none;
        d=google.com; s=arc-20160816;
        b=GgEA8N+e7UDobR2X0YXOuDw28dXqAx5oBgwO0KiDnleIKzYX10ZbgVsHLtjyKRrd0H
         dM6fx9OrTmoyVf5JddZtoCNCMjP9hWvI/xr+y0kpV5jUfLu8/9ENScV7ldN1P7IxkKN/
         PNQPbQ+S2iF0WEXXmT3JcKmqt27Rrl9s+hiHh78K5up+HuxCG+gJzFGECUCk7M3zBMGj
         0ClJ+x1S3uAUmPVRfVoJJ1/kgfAKV3BS0XrO5CVxMADG8HWQHsd0+2mUfWFZx1c+3Rtj
         yb1PQwxd+XK0huVlpoTW5jhfaHj8SNOTomBqQnPGlb2leDDCp4VPgjSakFfYCdZi1QES
         EyBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=vID2mAgS0GO1+V7kE9VEFqkHTebAHEfr4s1xnyN48Ps=;
        b=kvxbkD7DI6djnJ4GFrkMHaRZYXThImo61Ho/l6U4aNi0EqYC2RlhH+1V1hdH0XSuue
         4jM2I8o7i+Qj+kw8riyVJSBt+teg5vVgRGOK+VAvhWrJvE6gh4nBke8fkuoe25vNqowO
         Xvc18/D2Q5tjPMBajUPyy1AV4fet+pVHBRISZbkhUYMhYZhQeTOkxW3rnP+/TUs9AFAO
         m50ZD7H9bh303OcpYnoQ4jblFGEL6KgyebcfB/Pa2OcW+V9zPCAyo/fneiRlFUc+ex8f
         5w3YjhjFQoVC8YqyozgBx1P56jhOoaRo65YxJ0N8i2vJxh2LKEiU044pu4NjYcsjuwx4
         6qVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
Received: from huawei.com (szxga05-in.huawei.com. [45.249.212.191])
        by gmr-mx.google.com with ESMTPS id x1si636292ybs.0.2019.11.05.17.09.08
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Nov 2019 17:09:08 -0800 (PST)
Received-SPF: pass (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as permitted sender) client-ip=45.249.212.191;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 0F038FE0A83A71C03679;
	Wed,  6 Nov 2019 09:09:06 +0800 (CST)
Received: from [127.0.0.1] (10.184.225.177) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 6 Nov 2019
 09:08:55 +0800
Subject: Re: [PATCH v3] scsi: avoid potential deadloop in iscsi_if_rx func
To: "wubo (T)" <wubo40@huawei.com>, "lduncan@suse.com" <lduncan@suse.com>,
	"cleech@redhat.com" <cleech@redhat.com>, "jejb@linux.ibm.com"
	<jejb@linux.ibm.com>, "martin.petersen@oracle.com"
	<martin.petersen@oracle.com>, "open-iscsi@googlegroups.com"
	<open-iscsi@googlegroups.com>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>, Ulrich Windl
	<Ulrich.Windl@rz.uni-regensburg.de>
CC: Mingfangsen <mingfangsen@huawei.com>
References: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
From: Zhiqiang Liu <liuzhiqiang26@huawei.com>
Message-ID: <cfd18d34-69b1-6837-1e59-814fe05f8c45@huawei.com>
Date: Wed, 6 Nov 2019 09:08:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.5.0
MIME-Version: 1.0
In-Reply-To: <EDBAAA0BBBA2AC4E9C8B6B81DEEE1D6915DFB0ED@dggeml505-mbs.china.huawei.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.184.225.177]
X-CFilter-Loop: Reflected
X-Original-Sender: liuzhiqiang26@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liuzhiqiang26@huawei.com designates 45.249.212.191 as
 permitted sender) smtp.mailfrom=liuzhiqiang26@huawei.com
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

Friendly ping...

On 2019/10/31 14:17, wubo (T) wrote:
> From: Bo Wu <wubo40@huawei.com>
> 
> In iscsi_if_rx func, after receiving one request through 
> iscsi_if_recv_msg func, iscsi_if_send_reply will be called to 
> try to reply the request in do-loop. If the return of iscsi_if_send_reply
> func return -EAGAIN all the time, one deadloop will occur.
>  
> For example, a client only send msg without calling recvmsg func, 
> then it will result in the watchdog soft lockup. 
> The details are given as follows,
> 
> Details of the special case which can cause deadloop:
> 
> sock_fd = socket(AF_NETLINK, SOCK_RAW, NETLINK_ISCSI);  
> retval = bind(sock_fd, (struct sock addr*) & src_addr, sizeof(src_addr); 
> while (1) { 
> 	state_msg = sendmsg(sock_fd, &msg, 0); 
> 	//Note: recvmsg(sock_fd, &msg, 0) is not processed here.
> } 	 
> close(sock_fd); 
> 
> watchdog: BUG: soft lockup - CPU#7 stuck for 22s! [netlink_test:253305] Sample time: 4000897528 ns(HZ: 250) Sample stat: 
> curr: user: 675503481560, nice: 321724050, sys: 448689506750, idle: 4654054240530, iowait: 40885550700, irq: 14161174020, softirq: 8104324140, st: 0
> deta: user: 0, nice: 0, sys: 3998210100, idle: 0, iowait: 0, irq: 1547170, softirq: 242870, st: 0 Sample softirq:
> 	TIMER:        992
> 	SCHED:          8
> Sample irqstat:
> 	irq    2: delta       1003, curr:    3103802, arch_timer
> CPU: 7 PID: 253305 Comm: netlink_test Kdump: loaded Tainted: G           OE     
> Hardware name: QEMU KVM Virtual Machine, BIOS 0.0.0 02/06/2015
> pstate: 40400005 (nZcv daif +PAN -UAO)
> pc : __alloc_skb+0x104/0x1b0
> lr : __alloc_skb+0x9c/0x1b0
> sp : ffff000033603a30
> x29: ffff000033603a30 x28: 00000000000002dd
> x27: ffff800b34ced810 x26: ffff800ba7569f00
> x25: 00000000ffffffff x24: 0000000000000000
> x23: ffff800f7c43f600 x22: 0000000000480020
> x21: ffff0000091d9000 x20: ffff800b34eff200
> x19: ffff800ba7569f00 x18: 0000000000000000
> x17: 0000000000000000 x16: 0000000000000000
> x15: 0000000000000000 x14: 0001000101000100
> x13: 0000000101010000 x12: 0101000001010100
> x11: 0001010101010001 x10: 00000000000002dd
> x9 : ffff000033603d58 x8 : ffff800b34eff400
> x7 : ffff800ba7569200 x6 : ffff800b34eff400
> x5 : 0000000000000000 x4 : 00000000ffffffff
> x3 : 0000000000000000 x2 : 0000000000000001
> x1 : ffff800b34eff2c0 x0 : 0000000000000300 Call trace:
> __alloc_skb+0x104/0x1b0
> iscsi_if_rx+0x144/0x12bc [scsi_transport_iscsi]
> netlink_unicast+0x1e0/0x258
> netlink_sendmsg+0x310/0x378
> sock_sendmsg+0x4c/0x70
> sock_write_iter+0x90/0xf0
> __vfs_write+0x11c/0x190
> vfs_write+0xac/0x1c0
> ksys_write+0x6c/0xd8
> __arm64_sys_write+0x24/0x30
> el0_svc_common+0x78/0x130
> el0_svc_handler+0x38/0x78
> el0_svc+0x8/0xc
> 
> Here, we add one limit of retry times in do-loop to avoid the deadloop.
> 
> Signed-off-by: Bo Wu <wubo40@huawei.com>
> Reviewed-by: Zhiqiang Liu <liuzhiqiang26@huawei.com>
> Suggested-by: Lee Duncan <LDuncan@suse.com>
> Suggested-by: Ulrich Windl <Ulrich.Windl@rz.uni-regensburg.de>
> ---
> V3:replace the error with warning as suggested by Ulrich
> V2:add some debug kernel message as suggested by Lee Duncan
> 
> Thanks,
> Bo Wu
> 
>  drivers/scsi/scsi_transport_iscsi.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/scsi/scsi_transport_iscsi.c b/drivers/scsi/scsi_transport_iscsi.c
> index 417b868d8735..ed8d9709b9b9 100644
> --- a/drivers/scsi/scsi_transport_iscsi.c
> +++ b/drivers/scsi/scsi_transport_iscsi.c
> @@ -24,6 +24,8 @@
>  
>  #define ISCSI_TRANSPORT_VERSION "2.0-870"
>  
> +#define ISCSI_SEND_MAX_ALLOWED  10
> +
>  #define CREATE_TRACE_POINTS
>  #include <trace/events/iscsi.h>
>  
> @@ -3682,6 +3684,7 @@ iscsi_if_rx(struct sk_buff *skb)
>  		struct nlmsghdr	*nlh;
>  		struct iscsi_uevent *ev;
>  		uint32_t group;
> +		int retries = ISCSI_SEND_MAX_ALLOWED;
>  
>  		nlh = nlmsg_hdr(skb);
>  		if (nlh->nlmsg_len < sizeof(*nlh) + sizeof(*ev) ||
> @@ -3712,6 +3715,10 @@ iscsi_if_rx(struct sk_buff *skb)
>  				break;
>  			err = iscsi_if_send_reply(portid, nlh->nlmsg_type,
>  						  ev, sizeof(*ev));
> +			if (err == -EAGAIN && --retries < 0) {
> +				printk(KERN_WARNING "Send reply failed, error %d\n", err);
> +				break;
> +			}
>  		} while (err < 0 && err != -ECONNREFUSED && err != -ESRCH);
>  		skb_pull(skb, rlen);
>  	}
> --
> 1.8.3.1 
> 
> 
> .
> 

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/cfd18d34-69b1-6837-1e59-814fe05f8c45%40huawei.com.

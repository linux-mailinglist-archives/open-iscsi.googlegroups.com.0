Return-Path: <open-iscsi+bncBDO7B5X3UIBBBYECQD6QKGQE5FBTK5Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E6732A2B0B
	for <lists+open-iscsi@lfdr.de>; Mon,  2 Nov 2020 13:53:54 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id k16sf4905127oom.10
        for <lists+open-iscsi@lfdr.de>; Mon, 02 Nov 2020 04:53:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604321633; cv=pass;
        d=google.com; s=arc-20160816;
        b=rwdU4IMcsEWqoJARv4lZvuMzFoOWJQcYdAIy8ConS2YjEM7Ms65Rk37F+z4sV1/9My
         48tS9+OUyRkDHZAvsLZi9MYAkJtCkEKLpPvdJt6kCDONg4k/5xeCIrEjaElwxEi0Sr/h
         0HcsplzHj6dzRCxmrlm2fteRF61zPcv3yYsSw1j+mDCTsW1+ZObQDnteQ0G8yrdZ2lVf
         A+NkNvc6AThrBT4n8rJwBdvkpHRSHDP+eirFBSm+IMK0pnhLgo2jpNimoe+v/PmK1Yn/
         5j+WOydEyAlkxm9axxBoUrCCPaIjrXa9RJIQqOjWrb+ugs34Vp+g3x5XjdbCUndwv02J
         bCzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:user-agent:date:message-id:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=+sHSHnySOlzWX5vkibZgXHAcRQtoTPmzfJlAAkN813c=;
        b=ibtrBvkKE1oMUagv0G2QxZEnXY4nx7xB/J1Cok+t492C7fUdf0SghP0juvDlRFf3qS
         znTzRn13k52sbuiN4fULv0odGTQDdGMahe+S81nymvfrGyLB9Uaa6YAFr1bx/HW/Z17Y
         aL62TiJvyvTFEBzye6v+F9gCvRG1GzmiPM8vPigcB9aUYnRY8EUoe1eZEg1kEJIlPfOU
         63ZHYC1iBuHrnA0v8aKFvb2q6Bxm66zSbozkXaz+eDn5I/NnUdiIn3C/58MfcVj83ILG
         eF9dWGoD5UHoo/vkf0dyTFFoilAvdtbDNMGDRD89+Rp+wdlEAU+tqWMyfwhS4ZTNHsD/
         Pqnw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+sHSHnySOlzWX5vkibZgXHAcRQtoTPmzfJlAAkN813c=;
        b=CfikjqPBgjcwKa/FZHsNyIkYA5RygUVlBak3C9fzRHU0wk5vgUAlxSpzRi0QhrOpsj
         29TENr2H+CIycLkTL9He0QvHDepimAOKL3Ts+mKzy/Q0f0KZ8H+HZoFn9/yro/pFC9Hs
         7YgR1pS5oFRXFM6pL69nlFlbfz86B23CqhmFBA1rPZHYYcQv1cg20ZLjWNJmUEJd+Dn0
         nCYPiEyTqUgmg5VWg5dUJEiUsYOKFXcFW4o5PQ+1ERRH0L+/YI5zW3VeB09cIPIhL5JP
         4Uq7/5uaMVbxvEF3ZcKeWzL8Y52mxBolSbJkyZf1ljlaJtZbfZrrZt1jz8f3CQiyCC7I
         7oTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+sHSHnySOlzWX5vkibZgXHAcRQtoTPmzfJlAAkN813c=;
        b=J2Acl0XDD/WPVydnNeMHYy+/qiSQgto2F7sqORP50Ce2t7oZtkmIT86Fp0VobD6xcf
         hhXwlbgOpUPja7CF5iH5BVZDOZAlttOCQgK52QwgYYKqMxQo8Yv15JBN7+wOrZUPtqV1
         JjPYan8SRGuv3z0M1Y8r2mmGAftZOaL7DeHzL/8zgIQKoNXFcJfpJdqCq2Tt0EoR8JF8
         j5IkmzFyFT3siO5HvADE4D13h/m+AodS19tpuSz/lO9Uhham+JPV1p/bI0XGlWcDl7eq
         BtMP76KNXONKiXtIATAThb9UKQNChASLXGwIoDxfJAoECZuN2jmgGbzdZX2VS5CkbQnN
         0Fbw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533jUsPBaPkYtceDi2oUb2klETj8HA6zsoynvv2VWFjw40tEH2UG
	3H0TpEQw2onybBomeiu63N4=
X-Google-Smtp-Source: ABdhPJwiIsZI7vrIj6Rpbt2EM4wEHhhXFiLOgWB+GK96o2OzqKG0WQm8LUK9CkrSJyvAW4xLCMwBcQ==
X-Received: by 2002:a4a:c218:: with SMTP id z24mr11999761oop.9.1604321633023;
        Mon, 02 Nov 2020 04:53:53 -0800 (PST)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a05:6830:1f59:: with SMTP id u25ls3506236oth.1.gmail; Mon,
 02 Nov 2020 04:53:52 -0800 (PST)
X-Received: by 2002:a05:6830:19f4:: with SMTP id t20mr3984270ott.239.1604321632551;
        Mon, 02 Nov 2020 04:53:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604321632; cv=none;
        d=google.com; s=arc-20160816;
        b=SZnP79XGPeBp0c6bSng/MT6gyqDgyLimjLmrMTGhPZJfqn2SaWTic7X+8L6fH96TKx
         0Iaz5/mqqyRNxd8NP4nx6n2Rt/sdMI+DvZYRADu10pOHeCakyrqXZpzlsVwJXZrrMze4
         pMs2BL96o5bybcqcCrLNYJt9Enh+chrk6B16NKsVayg3D+YQT57KV49cxhrR+oIzZFUQ
         R0WGWJa/uCrOFQLP3meJWfDtFNUGFjTu4D+XpgF7HyXXSUcwT2VtMw1xgAz01WrZ9Z/0
         CZUC/+wdZgbHXJ1AwUpjbC2iC4z5tvUaBxANd95F1sAEFw83cZshWJrGJzmXqDocy9+N
         QK7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=CYCMej33H70M0ftaOsflbG9NXd576DDW3GGirZNH1jo=;
        b=fjZ8LO6tVII64rF9R3sKCLoqz/4b4VePRjOnc0zwaYXV02sWUy+TwatTxZPrzXw4bN
         hI+MTO4KiJQgYXa0CHhEhLYpW879ila84WoYwYvQJ8rEyhkzULkg+wQJC2cfTK1FMN/i
         5/dDEx0IbnYxgdll0hNYPdYvPS5Ey4mSPVwsjaiVDn/t5ELBRqpkfiGu8fegsvf87jY2
         KiRx1DLp0aMtcdeoDmVVvpEf+I3YjoZ1Guf8Sjz/hmJE/juV/0U/afi+dMj/tuZAk0pX
         gFMpemY3hjRxNV/lYkx6vl4Mr/uGU3TTVH131PIlVKjgbKOUF9WbiWVo17c95QPuG+Wp
         WzFQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) smtp.mailfrom=wubo40@huawei.com
Received: from szxga06-in.huawei.com (szxga06-in.huawei.com. [45.249.212.32])
        by gmr-mx.google.com with ESMTPS id r6si1931541oth.4.2020.11.02.04.53.52
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Nov 2020 04:53:52 -0800 (PST)
Received-SPF: pass (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as permitted sender) client-ip=45.249.212.32;
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga06-in.huawei.com (SkyGuard) with ESMTP id 4CPtBR6X17zhfpq;
	Mon,  2 Nov 2020 20:53:19 +0800 (CST)
Received: from [10.174.179.35] (10.174.179.35) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Mon, 2 Nov 2020 20:53:11 +0800
Subject: Re: [PATCH] scsi: libiscsi: Fix cmds hung when sd_shutdown
To: <linux-scsi@vger.kernel.org>, <open-iscsi@googlegroups.com>
CC: <lduncan@suse.com>, <cleech@redhat.com>, <jejb@linux.ibm.com>,
	<lutianxiong@huawei.com>, <linfeilong@huawei.com>, <liuzhiqiang26@huawei.com>
References: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
From: Wu Bo <wubo40@huawei.com>
Message-ID: <1c38befc-3faa-8420-9156-3804f5129475@huawei.com>
Date: Mon, 2 Nov 2020 20:53:11 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.2.2
MIME-Version: 1.0
In-Reply-To: <1604132622-497115-1-git-send-email-wubo40@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Originating-IP: [10.174.179.35]
X-CFilter-Loop: Reflected
X-Original-Sender: wubo40@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of wubo40@huawei.com designates 45.249.212.32 as
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

On 2020/10/31 16:23, Wu Bo wrote:
> For some reason, during reboot the system, iscsi.service failed to
> logout all sessions. kernel will hang forever on its
> sd_sync_cache() logic, after issuing the SYNCHRONIZE_CACHE cmd to all
> still existent paths.
> 
> [ 1044.098991] reboot: Mddev shutdown finished.
> [ 1044.099311] reboot: Usermodehelper disable finished.
> [ 1050.611244]  connection2:0: ping timeout of 5 secs expired, recv timeout 5, last rx 4295152378, last ping 4295153633, now 4295154944
> [ 1348.599676] Call trace:
> [ 1348.599887]  __switch_to+0xe8/0x150
> [ 1348.600113]  __schedule+0x33c/0xa08
> [ 1348.600372]  schedule+0x2c/0x88
> [ 1348.600567]  schedule_timeout+0x184/0x3a8
> [ 1348.600820]  io_schedule_timeout+0x28/0x48
> [ 1348.601089]  wait_for_common_io.constprop.2+0x168/0x258
> [ 1348.601425]  wait_for_completion_io_timeout+0x28/0x38
> [ 1348.601762]  blk_execute_rq+0x98/0xd8
> [ 1348.602006]  __scsi_execute+0xe0/0x1e8
> [ 1348.602262]  sd_sync_cache+0xd0/0x220 [sd_mod]
> [ 1348.602551]  sd_shutdown+0x6c/0xf8 [sd_mod]
> [ 1348.602826]  device_shutdown+0x13c/0x250
> [ 1348.603078]  kernel_restart_prepare+0x5c/0x68
> [ 1348.603400]  kernel_restart+0x20/0x98
> [ 1348.603683]  __se_sys_reboot+0x214/0x260
> [ 1348.603987]  __arm64_sys_reboot+0x24/0x30
> [ 1348.604300]  el0_svc_common+0x80/0x1b8
> [ 1348.604590]  el0_svc_handler+0x78/0xe0
> [ 1348.604877]  el0_svc+0x10/0x260
> 

Hi,

Sorry, I did not add this commit:

commit 0ab710458da113a71c461c4df27e7f1353d9f864
Author: Bharath Ravi <rbharath@google.com>
Date:   Sat Jan 25 01:19:25 2020 -0500

     scsi: iscsi: Perform connection failure entirely in kernel space

It makes the session recovery in the kernel do not need iscsid.

This commit was not added in my system, So the problem still exists. 
After adding the patch, Tested and verified that the problem I 
encountered has been resolved.

Please ignore this patch.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/1c38befc-3faa-8420-9156-3804f5129475%40huawei.com.

Return-Path: <open-iscsi+bncBD3JNNMDTMEBBZ7CW2UAMGQE3HW7X2I@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-x113f.google.com (mail-yw1-x113f.google.com [IPv6:2607:f8b0:4864:20::113f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7D87AB4B0
	for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 17:23:22 +0200 (CEST)
Received: by mail-yw1-x113f.google.com with SMTP id 00721157ae682-59c0dd156e5sf32124667b3.3
        for <lists+open-iscsi@lfdr.de>; Fri, 22 Sep 2023 08:23:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1695396201; cv=pass;
        d=google.com; s=arc-20160816;
        b=Jla7j9pcWlRTYTN2GJDdKFr6ekD4bUI4OUcwwrG/a0USOruta7BuRNTh6WUexsfuR5
         gcmlbwzy5XNUBwhI7fLv3QZ7XK3C5pdGKdaWq1+UaSXQGPULdI5lGO5F0bhuDGt2+OaJ
         SJj1vuI6OXhdkUMVcbmBgUIujeYkcU3HyMRRrHquFt7cZuL9bgwd9+OYT3rmZ8TvT+B/
         HsF3yvBir6Euu/fiRXzFTv2GDyw7/j//zqZXbP7RKqULaRb9xK/LjSosdbIxsiABk4+G
         O4L0Lk7lyQbNnxTII9+ST/YYXnZhiqYSDSg9qOhKkUoBnDGwljjc7kqsG4CCob4cDd9k
         V/5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:from
         :references:cc:to:content-language:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=6o/AUJhTwINb6Cu4kWrBPmKyNQ7L06FgkyUW7gBbO6I=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=DrtlfKtkbgsF4I7cwC6F3Ntsge6oFALLPcHAdQkivKcafLE/StsfoDi6/jvGHU41jL
         mY4Wkoj1fIQK+rmfren2lsuorlzPoduYjJ58fjjrEWqvlaUPnF/9Mo7guApy1gIvqQza
         7MmE3Ku411Tyb8IClz10vc5yqzhmQmgLvrTHTfftJhk1wZS0519md5FgRJ5QuRqbakA6
         lH6m6y0pnrBmJsphXiN34xkdWW1YpvXKhmh1T5+cSXKZJ09CfTYIsCew2l0gfzptooTs
         F0CV/scU0Zwc+w+5IsBNoQNjenjwRxcZjC78ZWqQ4K+kx5JVfXCqoV6XuLwVPZvSvn6d
         ZaOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.182 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20230601; t=1695396201; x=1696001001; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6o/AUJhTwINb6Cu4kWrBPmKyNQ7L06FgkyUW7gBbO6I=;
        b=hbui0m2NMAoyNIezwopP0Gke1evKBgFKfAS+4SCfvgZo/AV9Hgx3XTGnAABkMjFP5G
         ELLGCVqDMEGj/v4i5GDZ0uYnRJL1oXWMY4ZlYfCLtIw9l2ii6dHl8w+Zm2NliaovhLsi
         L4TqZFQHE8vySPe0jPjbx5tss7LabzuvZZC7xUSzqErfenvGrcLh4ABXdL16+y3h0XZF
         XTP+VDCkq5iZlQb7l9T7TrX1YbYfWIhxK9/DG/69XBylBAV2g9/qp0sySg6vH+g6gJal
         4af1rJk+nusW6DGr7t5xleZt65/Gdw3skS/UFggh3Gb9dXnfhTa8IKkj76MN5GsIo4ke
         AUtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695396201; x=1696001001;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:in-reply-to
         :from:references:cc:to:content-language:subject:user-agent
         :mime-version:date:message-id:x-beenthere:x-gm-message-state:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6o/AUJhTwINb6Cu4kWrBPmKyNQ7L06FgkyUW7gBbO6I=;
        b=YBUg/X/uJuXIx9Q6YE4ATxZFbiczTCLJGrp5auvJThRdQCaewNzs6FQdgMAWZKpb/V
         hqGSU4fpuJgmx97MRpz9eRhD3bKsISGD6CXKAG1tdPaEedPwUqRlR6fS3L16SXhw6tZ9
         H5o+nrpRDfK7oJDpgYF1xUiIKnkfaSsmpessLOthEDkDkRyAmKRx0RgLJgWe7GP3DRtf
         eKZ5ts8lD4ENFZA1nlKlmQHvey57F3Sqwp9FrQSR1CYLxs2/3TyeAsP9mpoJ7lEP5c7x
         pmfhQliO4eNMzkPo0E0PJYJvCla2OIWQqk/4dhmKmUce/msRjfX/9M+VqIsfBNFrwzPc
         cpuQ==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOJu0Yy1P0i1ogFsxgQ3LKJSDqll3HrxNqOBPfliGaidfB1qpqZh6gzO
	ArQuyDAF9GQ2mCsYc+7nSH0=
X-Google-Smtp-Source: AGHT+IFB1VN4sZy4RNKJItAK3w77wV09/qLeu/YXrp5hVoFCU3IsTgDmmVj/rdBEv3lycnpTErGGpQ==
X-Received: by 2002:a25:c4:0:b0:d7b:97f3:4646 with SMTP id 187-20020a2500c4000000b00d7b97f34646mr8902648yba.60.1695396200981;
        Fri, 22 Sep 2023 08:23:20 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:e7d6:0:b0:d86:29c:2155 with SMTP id e205-20020a25e7d6000000b00d86029c2155ls1400306ybh.2.-pod-prod-01-us;
 Fri, 22 Sep 2023 08:23:18 -0700 (PDT)
X-Received: by 2002:a25:83c9:0:b0:d81:aae4:f774 with SMTP id v9-20020a2583c9000000b00d81aae4f774mr9109974ybm.25.1695396198745;
        Fri, 22 Sep 2023 08:23:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1695396198; cv=none;
        d=google.com; s=arc-20160816;
        b=JBLqV+cqaL/CLkGmPL0/vPzIXXgKxbUVKfH2yuIdB4P/oh+tWRc1QDnqlG2PdvidW4
         VUr+juYWru5Co97BHV2j7kz7exysCnKJRklyH0C7ZcVN8LJI98AU3rYhiMkl1i2C5wRa
         YyzSTRxA5HLeoUNBJwTTFIIpwHMdhrceMK4YXhlUuoiKmOnJkY1OdCgoja1e8m+QBFow
         vrlfwGcYy/sefAuLIVppsubuuJDgoRqk2abxb024key88d474hSNEhJoteGBoc1hTi8P
         wwaFUsuDTT0XF11jvTPsoP8DCOBOEHpEmOS1Ze+7yNANes6wfAFCr1yh0UPSbTObCNHP
         0TIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id;
        bh=WZ743c23h82eWXrVp5Ju6MBdvRvF0AFD87bTIsRHhaE=;
        fh=UEpFMKOqyweapDowiE7VvOt2ySza3HVObMQ+Ezn7xQ0=;
        b=JVvM5RquO1VnPNexF/klukmOy1yEjxX8zwZ27OlvF3j3u565ooMygH0Lkq9/fAT2fD
         UyX4ilU0eNMxTQGT45bbd3q693v+Rk1hDUoYtqjz1wqhG7lsDOGr8ZgSaRF09/6ElRNB
         LoQJ/z6MTF4RL9hr6U2UmjuqnmdREJlpjSzu2dQ1OYrhuqxQKeDkybcRER2VcO3yddJ8
         XYBNrCpPsX1k1vHtlCPajDdqiCBPiVC8Y+TKZyTB8PBWoUMTc1APb0hQ8iom56is22jL
         CuFM0GP46fwwOBk6RdbtGo6yqr//fR9+BcVUXQpBbby3ui0pN3fMIzdEzTZd9OZl4L09
         KjEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.182 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=acm.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com. [209.85.210.182])
        by gmr-mx.google.com with ESMTPS id jp14-20020ad45f8e000000b00651675f4758si424861qvb.4.2023.09.22.08.23.18
        for <open-iscsi@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 08:23:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.182 as permitted sender) client-ip=209.85.210.182;
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-69101d33315so2097741b3a.3
        for <open-iscsi@googlegroups.com>; Fri, 22 Sep 2023 08:23:18 -0700 (PDT)
X-Received: by 2002:a05:6a20:12c9:b0:157:7568:6796 with SMTP id v9-20020a056a2012c900b0015775686796mr8773128pzg.60.1695396197651;
        Fri, 22 Sep 2023 08:23:17 -0700 (PDT)
Received: from ?IPV6:2620:15c:211:201:70e9:c86f:4352:fcc? ([2620:15c:211:201:70e9:c86f:4352:fcc])
        by smtp.gmail.com with ESMTPSA id a13-20020a17090a8c0d00b002633fa95ac2sm5081544pjo.13.2023.09.22.08.23.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 08:23:17 -0700 (PDT)
Message-ID: <50b20a3e-e264-4788-8e52-f7b57cf944f0@acm.org>
Date: Fri, 22 Sep 2023 08:23:15 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] scsi: core: scsi_device_online() return false if
 state is SDEV_CANCEL
Content-Language: en-US
To: Wenchao Hao <haowenchao2@huawei.com>,
 "James E . J . Bottomley" <jejb@linux.ibm.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 open-iscsi@googlegroups.com, linux-scsi@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, louhongxiang@huawei.com
References: <20230922093636.2645961-1-haowenchao2@huawei.com>
 <20230922093636.2645961-2-haowenchao2@huawei.com>
From: Bart Van Assche <bvanassche@acm.org>
In-Reply-To: <20230922093636.2645961-2-haowenchao2@huawei.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.182 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com;       dmarc=fail
 (p=NONE sp=NONE dis=NONE) header.from=acm.org
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

On 9/22/23 02:36, Wenchao Hao wrote:
> SDEV_CANCEL is set when removing device and scsi_device_online() should
> return false if sdev_state is SDEV_CANCEL.
> 
> IO hang would be caused if return true when state is SDEV_CANCEL with
> following order:
> 
> T1:					    T2:scsi_error_handler
> __scsi_remove_device()
>    scsi_device_set_state(sdev, SDEV_CANCEL)
>    					    scsi_eh_flush_done_q()
> 					    if (scsi_device_online(sdev))
> 					      scsi_queue_insert(scmd,...)
> 
> The command added by scsi_queue_insert() would never be handled any
> more.

Why not? I think the blk_mq_destroy_queue() call in 
__scsi_remove_device() will cause it to fail.

Thanks,

Bart.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/50b20a3e-e264-4788-8e52-f7b57cf944f0%40acm.org.

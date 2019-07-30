Return-Path: <open-iscsi+bncBDLJNW5CWIFRBDP277UQKGQE2NW6V4Y@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8297A2FC
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jul 2019 10:17:18 +0200 (CEST)
Received: by mail-yw1-xc38.google.com with SMTP id f15sf47226764ywb.5
        for <lists+open-iscsi@lfdr.de>; Tue, 30 Jul 2019 01:17:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564474637; cv=pass;
        d=google.com; s=arc-20160816;
        b=a72TqO52+RiHiPcY//3P/zMY0teNl20jFynNieU/mwml27ymDZRgxn2hpd2RnXDNZd
         W4XjqOQscANiVdTkankLZgLcCOpBV85UKWKoGE+mb9AYhmbEvv07gtxJ87n5yGdHjh3N
         VrbVAUiT3/JBugOfLSwt4UD0AMMX4VegcP8gOehpnXo2JME4AEG+vzTJDYAF4tOcsZhS
         jHCMcBH7lcVmhg3M/Q71NdeZQhqMLW1nZf0mtuCMJu3Ykusu9JF+ocGE3FDMqY0nX9sP
         zNGu57/oa3sD62nO11MG4qGm3a35Xs0K0WJspykZV1SuycOnVzN6lBg6aa7eCVZ7GE9N
         Yttw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to:mime-version
         :user-agent:date:message-id:from:cc:references:to:subject:sender
         :dkim-signature;
        bh=98ELDAd/1km3bWfFrHSQnwz1zqK1CX4mlM8C2+ptPTE=;
        b=qISCEsbUbJHz6e/C1eMLngs+IZWobi3gkEkeB5lfhxmwBKFrVG4XaHljGv1ktvxvmy
         4n9w7gzP+pLLQI003hHZNW3BDyaFcjBOF1xb5RRcjNRqIxzA1QGL0z+yphg8hICdafHb
         OG9EKtw4o5/6o+KHQI8AEFXwY8p34OzN4JtbYY3KVXyqClQs/NSEw03rxny1TgKoyr7o
         pL/RECn2pRf1lP+uZbKQLtC7SrnC//SGe2Doe7igq6RCWyBCHj99Gz5g5TcZexU/PfP6
         DOKv7F0S4TDtR5jD6g4TqCGFGpguO3oxao1rYsPfUsxFsLQM9NuJPw5sGnNoCLhMnYk+
         wU/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=98ELDAd/1km3bWfFrHSQnwz1zqK1CX4mlM8C2+ptPTE=;
        b=n8oM2ivXa4YIw2pGNjjA8koYDzhh7lQh2Y9JLgNtBb3NCx8b4afVf1GX8taz/LNafd
         +qweeAsjMdeDN999EYh5qsG+K7S8jP+K+jO+RKXOX/Kt/yxsegrgwrjZPEki6ZqiJMpd
         uOz1kFrZHzPtxH/Cyw4v3pVwWiy9eimpijTi1MGDUNyPxBW2/lrceSqTkuvw33P4UCSt
         RICm72gZUMCIJN8q9i/qnKQMBoXlyczcE+Cmer7ibyq/eDpvjLH1uV+5+uKg21kqieMT
         MnJ4pXzTkIPLH/1tK7J3I5rdgqCbrzhvDX2NpK3EJ1GZoKZaIAnvQH15NRGOpGZQ9uWV
         ynWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=98ELDAd/1km3bWfFrHSQnwz1zqK1CX4mlM8C2+ptPTE=;
        b=hWacr3DvxyiBhiNj1S24peYMcZ1jquxWc45dtANdhcJtyHeci7GLmh1O3XUBF1T8FS
         zSv+EMpYW3TZd8OapDKhuhzctbMxOwTHFFPPsS2/C+WkDxZyRQmYv6T170H9c4vOlU3D
         PutwhlfiC6HWqX/D75r7t7A/LVkaz04ZawuCacDJ8S3GjXqdUZfnZ00S8w+cnJcvtvXX
         /tNNIZvQXkfQc2mYuUXbrV/6hH2kowqHbUxsbbh37iCT8J1/7sCbeS8h5dAyDE+Soaq+
         X+FDmwAyXm4/TbwFhmDQfESbdyO1iKmlKcO7SDgYvEYwTAzndvnI2CBX/hYDxoIt2aRq
         UKhw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: APjAAAXu1lN2FmzQxAEUH6X15ieTTbWbgRmPxFIvczUm/rWvwrO5jPMj
	i17t6Ags5D5FJzHjbnd3hGw=
X-Google-Smtp-Source: APXvYqzgrVpBYiD3tjzpG5Par8pbUmPBYKB9FXbhPeiA+IuOvcn96MvK3yb47ba+FAoH4659LCKhjg==
X-Received: by 2002:a25:ca81:: with SMTP id a123mr30288593ybg.58.1564474637470;
        Tue, 30 Jul 2019 01:17:17 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a25:3741:: with SMTP id e62ls10008217yba.12.gmail; Tue, 30
 Jul 2019 01:17:17 -0700 (PDT)
X-Received: by 2002:a25:1bd4:: with SMTP id b203mr71994324ybb.18.1564474637182;
        Tue, 30 Jul 2019 01:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564474637; cv=none;
        d=google.com; s=arc-20160816;
        b=ySmW48JPgYiURydGwMsoTqtX1gEfw2x4yhC1bq6Z5sdUOA9ea4/xh+DImYOaIwfc6C
         MmfAFJuAmGi1F24LXW0pQkTQ5RG4BoWymOxd33OUrZ23OIu/IMBTyYL0lDm1bV0IylFN
         ygOT2fKdp47/ctftrXm2KjdjaWTEvrXhyx3yLXyyLFAyxgUHhcxSqyQOzwsuBQLxbejQ
         QWK5I5PDzsJPRd5uhpLZO5VN3U9acK5wQFKfP31JijCN2agb7zdNtOqTcVgCakBLpzbG
         ke9AbpEl9Jiapzi7JQOUcQF4Y2Ow3hAF2U7crW/wI1lRX+zO1rB1bkHamRr24Ohi95ib
         RkRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=isz7s0TgnOhYPm2zftWlf4JGVR+Mwb8P7BFq9b06JWM=;
        b=qRxGj99pPalejJ7hSly8gKBq0eok6+4GI8WbD96ZROFh0zxVlLMgffUsMn2ktcg1FC
         01CPpaJ8RPzoqktQKHSk4sVdw0w5WLjPGuMJohdoch1Q8vrG70riswu8weesfghd6mmS
         Xjdrrp+9Lx4pUT7IrIdr+D06OTmqilaopymlszdoSX77iZOhsM24FryUf1ym3ZTqVHTU
         xAWN2Eba52EMtA9BxwkwkB1iXcqyJk+G8m4FHwOFNO6Fy1bJQFw1uknvyn93TcsZ9Tir
         xdtAhTCmjEVxTgJPMgT+FzxzrHV0udCju0QDrrGpXhlkiebCnzjOcrnDc7DGuQ2tVLoq
         jZeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
Received: from huawei.com (szxga04-in.huawei.com. [45.249.212.190])
        by gmr-mx.google.com with ESMTPS id x5si1693033ybn.2.2019.07.30.01.17.16
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Jul 2019 01:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as permitted sender) client-ip=45.249.212.190;
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.59])
	by Forcepoint Email with ESMTP id 64D26D4B1EAB1BF8F74D;
	Tue, 30 Jul 2019 16:17:14 +0800 (CST)
Received: from [127.0.0.1] (10.184.191.68) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Jul 2019
 16:17:07 +0800
Subject: Re: [RFC PATCH 1/2] workqueue: implement NUMA affinity for single
 thread workqueue
To: Tejun Heo <tj@kernel.org>
References: <1563991180-11532-1-git-send-email-yebiaoxiang@huawei.com>
 <1563991180-11532-2-git-send-email-yebiaoxiang@huawei.com>
 <20190729192945.GE569612@devbig004.ftw2.facebook.com>
CC: <lduncan@suse.com>, <jiangshanlai@gmail.com>, <cleech@redhat.com>,
	<open-iscsi@googlegroups.com>, <jiangyiwen@huawei.com>,
	<xiexiangyou@huawei.com>
From: yebiaoxiang <yebiaoxiang@huawei.com>
Message-ID: <5D3FFCFA.2030001@huawei.com>
Date: Tue, 30 Jul 2019 16:16:58 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
 Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <20190729192945.GE569612@devbig004.ftw2.facebook.com>
Content-Type: text/plain; charset="UTF-8"
X-Originating-IP: [10.184.191.68]
X-CFilter-Loop: Reflected
X-Original-Sender: yebiaoxiang@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yebiaoxiang@huawei.com designates 45.249.212.190 as
 permitted sender) smtp.mailfrom=yebiaoxiang@huawei.com
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

On 2019/7/30 3:29, Tejun Heo wrote:
> Hello,
> 
> On Wed, Jul 24, 2019 at 05:59:39PM +0000, Biaoxiang Ye wrote:
>> @@ -1441,7 +1444,27 @@ static void __queue_work(int cpu, struct workqueue_struct *wq,
>>  		if (worker && worker->current_pwq->wq == wq) {
>>  			pwq = worker->current_pwq;
>>  		} else {
>> -			/* meh... not running there, queue here */
>> +			/*
>> +			 * meh... not running there, queue here
>> +			 * we can't break the ordering guarantee of dynamic single thread wq,
>> +			 * so have to check whethere the work are still pending in last pool or not.
>> +			 */
>> +			if (wq->flags & __WQ_DYNAMIC) {
>> +				list_for_each_entry(work_tmp, &last_pool->worklist, entry) {
>> +					if (work_tmp == work) {
>> +						pending = true;
>> +						break;
>> +					}
>> +				}
>> +				if (pending) {
>> +					last_pwq = get_work_pwq(work);
>> +					if (likely(last_pwq))
>> +						pwq = last_pwq;
>> +					else    /* queue here */
>> +						pr_warn("workqueue: work pending in last pool, "
>> +								"but can't get pwq.\n");
>> +				}
>> +			}
> 
> So, I'm not against the idea of making ordered workqueues numa-aware
> but this implementation is a bit too ugly.  Maybe the cleanest way to
> implement this is by synchronizing and ordering the pwqs?
> 
> Thanks.
> 
Hello, tejun

Thanks for your comment. Sorry I made a mistake, the above code check pending
is unnecessary, because function queue_work_on already checked it by
WORK_STRUCT_PENDING_BIT, so the above code will never executed.

For single work, the order can guaranteed already, single work will only
queued on single pwq at a time. The challenge is how to guarantee the order
between different works, they may queued on different pwqs, and executed
by each worker without synchronizing.

One of immature scheme is add two members enqueue_num and process_num to WQ,
when a task enqueue in function __queue_work, save the enqueue_num to task,
and then increase enqueue_num. When process_one_work check the enqueue_num of
work whether equal with current_num or not. Keep waitting if false, if true
then execute the work and increase current_num after done.
like below:
__queue_work()
        //store enqueue_num to each work
	if (wq->flags & __WQ_DYNAMIC)
		work->enqueue_num = atomic_inc_return(&wq->enqueue_num);

	insert_work(pwq, work, worklist, work_flags);
	
process_one_work()
	//wait for process
	if (pwq->wq->flags & __WQ_DYNAMIC) {
		while (work->enqueue_num != atomic_read(&pwq->wq->current_num))
			ndelay(10);
	}	
	worker->current_func(work);
	
	//done one work, increase current_num
	if (pwq->wq->flags & __WQ_DYNAMIC)
	     atomic_inc(&pwq->wq->current_num);

This immature scheme seems still too ugly, I tested it and got a smack in the eye.
So is there any good idea to making ordered workqueues numa-aware faultlessly?
BTW, I have no idea if is necessary to guarantee the order between different works.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5D3FFCFA.2030001%40huawei.com.

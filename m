Return-Path: <open-iscsi+bncBC6MFJWO34DBBYF25P3QKGQE5GU7ZCI@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-ed1-x538.google.com (mail-ed1-x538.google.com [IPv6:2a00:1450:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id C8D5920EE9A
	for <lists+open-iscsi@lfdr.de>; Tue, 30 Jun 2020 08:36:16 +0200 (CEST)
Received: by mail-ed1-x538.google.com with SMTP id x20sf16342862edr.20
        for <lists+open-iscsi@lfdr.de>; Mon, 29 Jun 2020 23:36:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593498976; cv=pass;
        d=google.com; s=arc-20160816;
        b=ffDCb2076id3tSC5AQjRwd7oGsw5Gn93t81PHGM2Kinorn/+B+ZOd9gXmcZiHcDq6B
         8bIlk1iFfrNETzxR7jG1wdi6MMUgnlYKlOZMNuqH6MRo0i+gO82hrSyZXIoG2L43bkuJ
         ZPM/zbYBd58bbu0JA6lXWq0FmBDCyorha5qXmke7rXBXfRP6XvJIeFUbZDTbIbuNoLme
         /E506M3RiPITW9ZdMD4C0lVig132t/vD1BnnzRvWj727aOrJrWmdfY9sZzrSSc3LiL3L
         Aq3hLr3g/vXHw+oAH6CRHSluyCeYBCGpIQUJvIvh1GgEVJ1ZyJeoxKb4vxZED3qLNGXM
         4h4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=AuI37eRZCiuIlQpGq57hj4aQLKp4nHiomFoK9OLvq5k=;
        b=eqjeKTxilWAlOx12LqHb8TQjyw+Bx6xQgR9g+g9oWoiuaIGdD9myRRJFljrEFxTzEj
         ZYDGAcUhthH8YXTg26K5/kYi6CA104ds4zlqow0T5Q9YjeunbvtE/GEScFsUGak9d2Rp
         b7v6Q6XZjk0ZVbhUfC249cdI7GOC3Zp9AsZ9CP9E6u7j3qvzKsRf9q/yJ2rl1fzvpf0Q
         YbVfQ8Fca5rLYbsgvZ36FkWNizZ4PtIJlVJ3ubx79/ZZlnWywvqo2srzXLqzEiAUXsTN
         5D+6pA3lk5PahfepSBm6DzA5/OLkncOPLhz0UCCEuOl/ZPOrHHUTtNu+1Kb8garR9BNJ
         23mA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=AuI37eRZCiuIlQpGq57hj4aQLKp4nHiomFoK9OLvq5k=;
        b=oA3w+N8Z5Bo5MySHxtsPZC3r0yj73zrFXiH7ZUTdgWeOyRN7qBL+t5YAFUpomrMtFC
         cQmqt0WMoeHYh5obDx3ZW+r34PhrMfFwlU5/b02yEKYvb3HBWVx/buav7e00nTi4zBhd
         YpbKEBt6XQ7AWY6dHkIvfMEMajpCCk8vaO4NFSW/Rgy4dck0CdYMVHpKp3qyEv+HdqPx
         6jqVul0/zZGmTRISG5v3s8WMsYaYIhu1HcIVC5e4iXI8Hmk24/903e13lLlHYhkHJzRX
         BHOS85OyE9ENMORAYaSKDQcAmRiSzBMfOJMq5nIvrvqdDuPdviYKXti9UyUi9kCBqGJr
         AoPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AuI37eRZCiuIlQpGq57hj4aQLKp4nHiomFoK9OLvq5k=;
        b=TotNqy9DQszKkUUQfe3N84N0pxvw2Lz7IHuW/hRPaB7x7BwAG+cWSraNNsohd1DMdf
         FI52ZIkazV5x/mQw2sNMhlSUNDgw/Ep85mjTcKn2tZHCc0ywz5+/sF7rkgn68mH/DIu+
         vnWCg8d/UNe3cWdhseAw6z5vy3FC9q7j8g2pbB6ulw/Dmz9363RmG5MKQFnERRJ/CRVz
         5Q3GiqVJ3DJo46q3KlGvNq2uoFAGmsjdvVQ9ws8EZYcWh1dV8mRcwWFw8I7Rp3+AAwJD
         CS4UEA++a8RmzS7SpCAt7BHoGbyci5VypJhoYC3h+IYCDp20otxFwu49rMYJnPM5UJRa
         u9Zw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533A7lBLlp19p2U+kD+nOCIIX7tUeolW3elcns/twHR4orj2CUJK
	JorkSDrj/WZwzaSFMV1pLTw=
X-Google-Smtp-Source: ABdhPJyjLxnNrMt7rLjwvPmznUxT5Ln90AjvU371r2961hSBWO3YyXkmUxrHS2TxjkImH9fFQfnezw==
X-Received: by 2002:a17:906:5496:: with SMTP id r22mr17664556ejo.449.1593498976526;
        Mon, 29 Jun 2020 23:36:16 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a17:906:834a:: with SMTP id b10ls908701ejy.3.gmail; Mon, 29
 Jun 2020 23:36:15 -0700 (PDT)
X-Received: by 2002:a17:906:2c18:: with SMTP id e24mr17979923ejh.335.1593498975931;
        Mon, 29 Jun 2020 23:36:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593498975; cv=none;
        d=google.com; s=arc-20160816;
        b=YWmfdOwaF+snrjY+K57SrYMnOa3Th1kF31zxwxpVq8v+YFpNraQ0QpNQ7Q7FLyBWJG
         3eWHmefb1v1NTqevahtYOdQW9Di1rEA9+Xc9VR35OjmYlAhANe3ITYhBTspd2UDCf0jP
         RNGVlaWsXmL5vMmrZdiYoNPDF9ZkBsWJP+ALqBVALi0KT7WNQXmMfG2LRSXgYtDuf785
         1NYW7gUqzjN7cycwUM3S6zGueOdr6J5XLm+Bf/F/7YiVtcVdnVk0rC4YRF6C3qYcIAAd
         Ku/ul9SOFdVKiSDSPCmqmtRsiv4xlO/KzZAQ6mQOptJnQRBx0wAwbBOMsK7fuCAnlX/z
         1R+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=j8aGG3UcUVOM0a4W5cJ8PQROz8t7NnIhKSsbVbKQ8os=;
        b=MamTdvGe8TAA+RVCbCteJvOzbjEex+dta074FW+uC24/2bmdc5fqF7OSyxGrh0z2M+
         N+L40aON9EUffe07LpXJiEkW3A/PcZ1zyKtgWUn7eVvSVao5PXNf3aO1uZo95N0NEDEd
         ZA5o7zS3H/XEJ6qX5WiziYEIgg0sTZcaTQfVdec//zUAAeC/T0XkYzGF2qziXOmG/944
         p4pA77q6cX2FDmfXEOVBvP73TY+/+nCU5iJgP3OMzk5nZnlcpi3af1cF5IoC7N89JB5J
         KNdI8nwnyzWFEh5Pv5iEqrFB+Dk4Srq2981PPvNNwHp5pbyjO+fM7PHRUuhEr9oXgdxx
         FCUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx2.uni-regensburg.de (mx2.uni-regensburg.de. [2001:638:a05:137:165:0:3:bdf8])
        by gmr-mx.google.com with ESMTPS id q9si128941ejj.1.2020.06.29.23.36.15
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jun 2020 23:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:3:bdf8 as permitted sender) client-ip=2001:638:a05:137:165:0:3:bdf8;
Received: from mx2.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 3131C600004E
	for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 08:36:15 +0200 (CEST)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx2.uni-regensburg.de (Postfix) with ESMTP id E583B600004D
	for <open-iscsi@googlegroups.com>; Tue, 30 Jun 2020 08:36:14 +0200 (CEST)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Tue, 30 Jun 2020 08:36:14 +0200
Message-Id: <5EFADD5D020000A100039CE2@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.1
Date: Tue, 30 Jun 2020 08:36:13 +0200
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] Re: Large Immediate and/or Unsolicted Data causes
 long delays on R2T responses
References: <75d706c2-e331-45bf-b764-6aa77703a45a@googlegroups.com>
 <4792_1593457181_5EFA3A1C_4792_1489_1_4c70b62c-467c-4860-a951-663fb88158c7o@googlegroups.com>
In-Reply-To: <4792_1593457181_5EFA3A1C_4792_1489_1_4c70b62c-467c-4860-a951-663fb88158c7o@googlegroups.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:3:bdf8 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> The Lee-Man <leeman.duncan@gmail.com> schrieb am 29.06.2020 um 20:59 in
Nachricht
<4792_1593457181_5EFA3A1C_4792_1489_1_4c70b62c-467c-4860-a951-663fb88158c7o@goog
egroups.com>:
> On Saturday, May 2, 2020 at 11:30:27 AM UTC-7, ajhutchin@gmail.com wrote:
>>
>> I am able to create a condition where the open-iscsi initiator fails to 
>> respond to an R2T request if the immediate/unsolicited data support is 
>> large ~128KB.  I've seen instances where a delay on an R2T is only a few 
>> seconds and other instances where no response is received in 180 seconds.
>>
>> If the host is doing a prefill operation with large writes that can be 
>> completed with immediate data alone and a large write that requires an R2T 
>> is sent, the open-iscsi initiator sometimes fails to respond to the 
>> target's R2T. 
>>
>> After inspecting the code, I am convinced it is caused by the lack of 
>> fairness in the *libiscsi  **iscsi_data_xmit* routine, which always 
>> favors the sending a new command over responding to R2Ts. 
>>
>> /**
>>  * iscsi_data_xmit - xmit any command into the scheduled connection
>>  * @conn: iscsi connection
>>  *
>>  * Notes:
>>  * The function can return -EAGAIN in which case the caller must
>>  * re-schedule it again later or recover. '0' return code means
>>  * successful xmit.
>>  **/
>> static int iscsi_data_xmit(struct iscsi_conn *conn)
>> {
>> ...
>> /*
>> * process mgmt pdus like nops before commands since we should
>> * only have one nop-out as a ping from us and targets should not
>> * overflow us with nop-ins
>> */
>> while (!list_empty(&conn->mgmtqueue)) {
>> ...
>> /* process pending command queue */
>> while (!list_empty(&conn->cmdqueue)) {
>> ...
>> while (!list_empty(&conn->requeue)) {
>>
>>
>> Am I looking at this code correctly?  I guess this order might be better 
>> for parallelization at the target by getting more commands onboard before 
>> responding to outstanding R2Ts. With immediate/unsolicited data enabled, 
>> the overhead of transmitting a new commands if higher and probably 
>> shouldn't come before responding to R2Ts. 
>>
>>
>> Do you have NOPs enabled? If so, do you see this issue with them disabled? 
> I seriously dislike and advise against NOPs. I've never seen them actually 
> help anything.

They could keep an connection alive that is passing through some firewall when there is no iSCSI I/O, maybe.

> 
> Have you tried playing with this code, i.e. changing the order? Without 
> looking deeply, are the R2Ts in the command queue and not in the requeue 
> queue?
> 
> What kind of load are you presenting to the server?
> 
> What do you mean by "the immediate/unsolicited data support is large 
> ~128KB"? What setting(s) did you change?
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/4c70b62c-467c-4860-a951-663fb881 
> 58c7o%40googlegroups.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5EFADD5D020000A100039CE2%40gwsmtp.uni-regensburg.de.

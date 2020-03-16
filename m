Return-Path: <open-iscsi+bncBC6MFJWO34DBBWGWXTZQKGQEYS5DO6A@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9521865BA
	for <lists+open-iscsi@lfdr.de>; Mon, 16 Mar 2020 08:31:36 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id c6sf784655wro.7
        for <lists+open-iscsi@lfdr.de>; Mon, 16 Mar 2020 00:31:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584343896; cv=pass;
        d=google.com; s=arc-20160816;
        b=YX6vrMCfY2vLpU17MGbY9oGjDDKpk+fC8XdDa4koJgO/RENtKBU469Q4wblJ4DO89W
         vnff4hBMEt+ElEydzde9Uo7T5W/4+VzHvBKhTCPh/c0ZnTRCAg/puXXuC/84Qe/nR3Ma
         eL0VRKmVybknpYN+zNfcV1fEKZ2v5Rpkx1mhzMz278GAvs/M9myPUOoW7V7UlYIJ4CwL
         UoZLbTVIwo+09m2u8aetRGoLm2vysroUa2paUC4SpGVvUH4THyXyMjdwUuUphWfTIV0S
         xqaGv1+Kzvpw3FdX37uWF4k4f7UKgKQ9HTGWJOnclhVpyaUTpaeGJJG0Zqr8/2pOCXpp
         hSOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-disposition
         :mime-version:in-reply-to:references:subject:to:from:date:message-id
         :sender:dkim-signature;
        bh=afjTTVrBt4k6Pyu7b/IKDDjLLLWM77jN5NQETOOhovU=;
        b=lHEGsRszW/gcbZvTCTTdsq3Xw+jv1wC/zelLswbWrfyyAOAiDDlF1aEwpmaUh/5wyj
         PA8oAAZt67eJjJV9pkY8ho6fD2K62JC78ZJqLNQHnChguRc9tFxUaxHsjOV/kp4P32h2
         E5qQOTbFVt1NhWdyXlRqhDI1dtez9H+ARum7BR7TRPj/8ephvfst+F2O1mRoR90+VY2P
         uOGV4JOMWdowXlWzpfzvonK8ujOjk0xGy0VsE2a0LzIphJZRizxtaHgp+MMhXmr7VqFK
         0qSLlGkrZc+Oy55hJBiKbN8GPPVfiORAvoG0kf0kqebYUOm6vPzMBNsUhCtFMTjyHZD3
         lYrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:from:to:subject:references:in-reply-to
         :mime-version:content-disposition:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=afjTTVrBt4k6Pyu7b/IKDDjLLLWM77jN5NQETOOhovU=;
        b=JSJ2xwi5/3VubCdShRW6XDsyoBj7XdrpiByEOgX0RzRobh3ZixI5S0u6VaPZpgTyns
         i3uPJ835OuhY1h/qY1mV5CciQM9dXwJPqUNrjmU1CVq79d+lTsWKQ3TD+SRYChwEPkUY
         PcmVYQMNMIjNmYaYOXtyxJVjHF2epB/MM+TQOHeeFbJ86XLkfcuIdmGjZrlUs8y/k/TF
         0zYeEmxSmtPhrXza+VAMsNPfIfbuOXZ3bO317Hv1tnr5gdSiHe0wXPAfq4H7oPZJxKCo
         TbJ8i7c9RIRNs2/rJv0VxBgL05W9Cz9soJ9OK+EXmwlw9u75ubkOpAjb+FU+ZSsp4TEt
         ToRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:subject
         :references:in-reply-to:mime-version:content-disposition
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=afjTTVrBt4k6Pyu7b/IKDDjLLLWM77jN5NQETOOhovU=;
        b=dlciqte/6K44Xx9VpTCefBR7Qya8seXKnHMCy7TIUylWDVMRmMNI1HQVR6sxbAILrd
         clshqCdftK4M+j9W01j4WaY6+IyemFo7l884Vwxhcsk3A1TGV9xQEpEFZF0IVhTUhmFa
         ZftpsQBovRbjW0y5o2K9ThuwRY/n+qxLaV/Jst1zLKufSxXeaqNNMDlEwyd8BrCc8KJ4
         DZlfH1391LXLglWAhiOYpxx0qKZI9c8fBGADbr2FMbNNRNTNga4unZBcpOir0NiCtX6W
         AShQ7bruE6Ml6s+DyM6WKYNBl3O+ur3jbAtUi4vh7WmHygTbti9/G5OsSXSTWtORVNaU
         aTlA==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: ANhLgQ2fIYwj6dyt8SkwpOdW1v8yh3yNA5k7ODq3Tghn4PjvZ3+PPQxi
	YwyNTW4Zm0RQ2LrFSYJdJVM=
X-Google-Smtp-Source: ADFU+vuTu6pCVhU9N9WUuN/1vq9YE/wsng2u5uBD58GESi7vPshsAWR5pUhHrCh9Ac1zxocOnhtaYw==
X-Received: by 2002:a5d:55c7:: with SMTP id i7mr35206082wrw.252.1584343896303;
        Mon, 16 Mar 2020 00:31:36 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:adf:afd4:: with SMTP id y20ls8895989wrd.5.gmail; Mon, 16 Mar
 2020 00:31:35 -0700 (PDT)
X-Received: by 2002:adf:c648:: with SMTP id u8mr34862871wrg.185.1584343895752;
        Mon, 16 Mar 2020 00:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584343895; cv=none;
        d=google.com; s=arc-20160816;
        b=ColhZDw9NnNkKMO1xCcyWP3rk9IAAnT8X70Pk+8mWqqC+fQpWnic1pyLM3rok5CTnm
         cXNZJ+b/SdX+AD6JO3DanxoNNSl8O39pfs0iX213dOQ5WENbVbCKCokvISOSseKZG1fh
         PlSpOYbE/DeZAA39oFlKBTEUZfBwEJsJTMJS2m1ZFod8H5FEioxQMTIdQiY9OIlFaIVB
         mD1jU6k5lk9oLLGqxmwhas0jJ9mAL4WkSvAK+VXZItySsNG8r88bcOHMhQEF51r/unWp
         RJfLmh5fFbwmrxXsKyKqMD1HXE0vWVgIKkIF2K/mnAI5+6BQpiXZhU1oZYu2IbPC5r+W
         /DCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:to:from:date:message-id;
        bh=p6H34qo90G8XePRlhF8cquG5A/CBJ2emFoyA1OS3rFQ=;
        b=j/MG6/SEHbglNckpjI32tFq5pSpt2/1emDyos4K/brPamGWG8hdHXIJatKPWeiOGcU
         aGetJ6VUF0GalXYEg5YvSwHYPE/InHXBcmYjmD3KnIPhaLokaoj4sdbfF8PCPIqPHLgU
         GQseOS3uQ16dlgFUwBG5acbDR2ff1q88FTjpJIr2yaMRhvQKZ9U9K57tlkzNdUUff1QL
         uwW1cFw6PZWoNiQqKtiMq2RLlFByNRYVZ6YWkuyL/nrMS9vPyyhKZpZsabqdqWb+AhwV
         OVxd8ELX4RON2oYrl5Yaveft9kHhyE7nvqS2ozvhPfFAmTAsELjzyOT1eaIUSczEOST7
         N+Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [2001:638:a05:137:165:0:4:4e7a])
        by gmr-mx.google.com with ESMTPS id o194si947320wme.2.2020.03.16.00.31.35
        for <open-iscsi@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 00:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 2001:638:a05:137:165:0:4:4e7a as permitted sender) client-ip=2001:638:a05:137:165:0:4:4e7a;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 0BFAE6000058
	for <open-iscsi@googlegroups.com>; Mon, 16 Mar 2020 08:31:35 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id E4229600004F
	for <open-iscsi@googlegroups.com>; Mon, 16 Mar 2020 08:31:34 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Mon, 16 Mar 2020 08:31:34 +0100
Message-Id: <5E6F2B54020000A100037C8B@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.2.0
Date: Mon, 16 Mar 2020 08:31:32 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "open-iscsi" <open-iscsi@googlegroups.com>
Subject: Antw: [EXT] replacement_timeout Override
References: <29983_1584196109_5E6CEA0D_29983_1691_1_CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
In-Reply-To: <29983_1584196109_5E6CEA0D_29983_1691_1_CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZrfOrZV1PLCA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates
 2001:638:a05:137:165:0:4:4e7a as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Marc Smith <msmith626@gmail.com> schrieb am 14.03.2020 um 15:28 in Nachricht
<29983_1584196109_5E6CEA0D_29983_1691_1_CAH6h+hdZ7QvF_WuLU5PJVpe4RpjM4EeEW7aBQVZ
fOrZV1PLCA@mail.gmail.com>:
> Hi,
> 
> I'm using open-iscsi version 2.1.1. I noticed that my
> "replacement_timeout" value set in the node record is not being
> applied, or rather is not overriding the default value set in
> iscsid.conf:
> 
> # iscsiadm -m node -T internal_redirect | grep replacement_timeout
> node.session.timeo.replacement_timeout = 5
> 
> # cat /etc/iscsi/iscsid.conf | grep replacement_timeout
> node.session.timeo.replacement_timeout = 120
> 
> # cat /sys/class/iscsi_session/session1/recovery_tmo
> 120
> 
> # iscsiadm -m session -P 2 | grep Recovery
> Recovery Timeout: 120
> 
> I can certainly change this value in iscsid.conf, but I was thinking
> my value in the node record would override this (for this specific
> target). Is it expected that this value should override what's in
> iscsid.conf? If so, then I assume I've hit a bug, or perhaps I have
> something configured incorrectly?
> 
> Thanks for your time.

I think whatever it was designed to do, there should be a "notice" at least that some specified setting is ignored if it is.

> 
> --Marc
> 
> -- 
> You received this message because you are subscribed to the Google Groups 
> "open-iscsi" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to open-iscsi+unsubscribe@googlegroups.com.
> To view this discussion on the web visit 
> https://groups.google.com/d/msgid/open-iscsi/CAH6h%2BhdZ7QvF_WuLU5PJVpe4RpjM4 
> EeEW7aBQVZrfOrZV1PLCA%40mail.gmail.com.




-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/5E6F2B54020000A100037C8B%40gwsmtp.uni-regensburg.de.

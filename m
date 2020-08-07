Return-Path: <open-iscsi+bncBC755V5RXMKBBMFMW74QKGQEYSFXQWA@googlegroups.com>
X-Original-To: lists+open-iscsi@lfdr.de
Delivered-To: lists+open-iscsi@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFFD23F4E4
	for <lists+open-iscsi@lfdr.de>; Sat,  8 Aug 2020 00:31:13 +0200 (CEST)
Received: by mail-oi1-x237.google.com with SMTP id a13sf1856111oie.4
        for <lists+open-iscsi@lfdr.de>; Fri, 07 Aug 2020 15:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:message-id:in-reply-to:references:subject
         :mime-version:x-original-sender:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=II+VjiirFQQ+UTQC8snIy/uJUPPvZ9VONZNTNLHS4po=;
        b=HCd0cClA6BnYWONeHIDIlAkGQEgwKrHPpOmT5/vYIR3MdjNBNwLmwzIeniHF95A3/b
         etEn56+AyXDFQ9zypYJtdyo8NMI+96fmF8rvdk4csLGYo2ZlJwIn080imfArA+exJcrD
         2AZ9fqFKU1nQ9CK2wljbNdYfSQWeg+Pyeji+OzykavvQZmULX0oDvsaeGV9CNjCxSlf+
         Hcb/n57ZQJWhsOp3ZSe/Q38BPhAIfYmWdKvCwD4tGO7wjKZET/2eV4N6nqE2ACjBfCU4
         Q/561zePH6uolXMD1iDruTzHBVwOeSIZM4enXDvxlIh+VwKZ7E9NEY8fot0INDLc0cHm
         ZMQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version
         :x-original-sender:reply-to:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=II+VjiirFQQ+UTQC8snIy/uJUPPvZ9VONZNTNLHS4po=;
        b=Iq2hd5V6Hsy8dSCdWSXtNSyVhoNVJtmtL8VXM8XVBEVgV7CkbdViGFqKCucFvB2lBe
         Fv4ZDUswQ9vjRe2DqJy2rItI9KYNko+FINkOGPivrxMWoe4iLbac3ljG3QcNTViTcYE0
         9gzguhgdFWUsoYdbEGQqzckiAs2tUmkYsCtufzX7GAM4ybGqcs+himhjn6ZkWC9KIQdL
         Ggljv9rCy7yvZFBWBxzTMr4kEb0rX1lZ5j7HNj0ixPydH3YqrL57pnqaub2yFYux5ccz
         pzpLdoOs/DUWxP/jDEhuclO5gkbMve+pglV1nGhuD+8iVDf04OYghxJTDAHok4YRVQFg
         76OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:message-id:in-reply-to
         :references:subject:mime-version:x-original-sender:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=II+VjiirFQQ+UTQC8snIy/uJUPPvZ9VONZNTNLHS4po=;
        b=t25sGXa0d7u4R9fRq66hikIU177WiIir9XS+e7JgX6YqA+3rBMllAoKQMJHC+GaoQm
         mkyCHumW1/ZayfISX9IXq6qNumkUqcOtFHjgUFEOLbBNypWF8Up9aYQiZkFgfy/GFR8h
         q1DCIlQKOYNS/wqam5ludalF3MVMjKx8bTyCEPE/uzLHvNLcpwfwuUecApB5LiYe7Ve5
         2i0yC+H4xxuUFIO0j2qhQRfGTl975Pc5xQ2gZQKSucMyk/JtHxlaWREP9Gb8rSSxX5nI
         y2vt8CzIbz3EY0WnUP8gFLCA5L3roweqe8VAxYRpymNBIh88ApBkfLWxzl9TXg8rpbTx
         20Mw==
Sender: open-iscsi@googlegroups.com
X-Gm-Message-State: AOAM533ZI4jJ+CUDeG2Xo7hy3U7V0oB9tKwlg8IWYuXYgJx/ZAf/WBm+
	2bl0dDqoymnbDbq+lRygeRk=
X-Google-Smtp-Source: ABdhPJzbDlZ+GyaBMOILZq/eEc6zJLbAthP/XC9AYW8eQu+jxBxm/qY1w+WRQX4jgr7wHvHMqwwtWA==
X-Received: by 2002:aca:c508:: with SMTP id v8mr12799594oif.149.1596839472889;
        Fri, 07 Aug 2020 15:31:12 -0700 (PDT)
X-BeenThere: open-iscsi@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls2505738otl.7.gmail; Fri, 07 Aug
 2020 15:31:12 -0700 (PDT)
X-Received: by 2002:a9d:4049:: with SMTP id o9mr13202749oti.112.1596839472581;
        Fri, 07 Aug 2020 15:31:12 -0700 (PDT)
Date: Fri, 7 Aug 2020 15:31:12 -0700 (PDT)
From: The Lee-Man <leeman.duncan@gmail.com>
To: open-iscsi <open-iscsi@googlegroups.com>
Message-Id: <8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o@googlegroups.com>
In-Reply-To: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
References: <CAOaPBH76JhA0Mm9wNT+m6a-sXPyusVHPMfLwNo73ettORPO8fw@mail.gmail.com>
Subject: Re: Todo list for open-iscsi
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_435_1836224922.1596839472150"
X-Original-Sender: leeman.duncan@gmail.com
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

------=_Part_435_1836224922.1596839472150
Content-Type: multipart/alternative; 
	boundary="----=_Part_436_885755351.1596839472151"

------=_Part_436_885755351.1596839472151
Content-Type: text/plain; charset="UTF-8"

Heh. I just realized you uncovered one item you could do: update the todo 
list! But there *are* things in that list that you could help with.

-- 
You received this message because you are subscribed to the Google Groups "open-iscsi" group.
To unsubscribe from this group and stop receiving emails from it, send an email to open-iscsi+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/open-iscsi/8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o%40googlegroups.com.

------=_Part_436_885755351.1596839472151
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Heh. I just realized you uncovered one item you could=
 do: update the todo list! But there <i>are</i> things in that list that yo=
u could help with.<br></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;open-iscsi&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:open-iscsi+unsubscribe@googlegroups.com">open-isc=
si+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/open-iscsi/8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o%40googlegroups.=
com?utm_medium=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msg=
id/open-iscsi/8f4b4991-b3da-4a5c-9bc2-fb51225b2bd5o%40googlegroups.com</a>.=
<br />

------=_Part_436_885755351.1596839472151--

------=_Part_435_1836224922.1596839472150--
